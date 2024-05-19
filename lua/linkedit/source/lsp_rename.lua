local kit = require('linkedit.kit')
local Async = require('linkedit.kit.Async')
local Client = require('linkedit.kit.LSP.Client')
local Range = require('linkedit.kit.LSP.Range')

---@type linkedit.Source
local Source = {}
Source.__index = Source

function Source.new()
  return setmetatable({}, Source)
end

---@param params linkedit.kit.LSP.LinkedEditingRangeParams
---@return linkedit.kit.Async.AsyncTask linkedit.kit.LSP.TextDocumentLinkedEditingRangeResponse
function Source:fetch(params)
  return Async.run(function()
    ---@type linkedit.kit.LSP.Client?
    local client
    for _, client_ in ipairs(vim.lsp.get_clients({ bufnr = 0 })) do
      if kit.get(client_.server_capabilities, { 'renameProvider' }) then
        client = Client.new(client_)
        break
      end
    end
    if not client then
      return Async.resolve(nil)
    end

    ---@type linkedit.kit.LSP.TextDocumentRenameResponse?
    local response = client:textDocument_rename({
      textDocument = params.textDocument,
      position = params.position,
      newName = 'dummy',
    }):await()
    if not response then
      return Async.resolve(nil)
    end

    ---@type linkedit.kit.LSP.Range[]
    local ranges = (function()
      if response.documentChanges then
        local ranges = {}
        for _, change in ipairs(response.documentChanges) do
          if change.textDocument.uri == params.textDocument.uri and change.edits then
            for _, edit in ipairs(change.edits) do
              table.insert(ranges, edit.range)
            end
          end
        end
        return ranges
      end
      if response.changes then
        local ranges = {}
        for uri, edits in pairs(response.changes) do
          if uri == params.textDocument.uri then
            for _, edit in ipairs(edits) do
              table.insert(ranges, edit.range)
            end
          end
        end
        return ranges
      end
      return {}
    end)()

    if #ranges == 0 then
      return Async.resolve(nil)
    end

    local bufnr = vim.uri_to_bufnr(params.textDocument.uri)
    for i in ipairs(ranges) do
      local lines = vim.api.nvim_buf_get_lines(bufnr, ranges[i].start.line, ranges[i]['end'].line + 1, false)
      ranges[i] = Range.to_utf8(lines[1], lines[#lines], ranges[i], client.client.offset_encoding)
    end

    return Async.resolve({
      ranges = ranges,
    })
  end)
end

return Source

