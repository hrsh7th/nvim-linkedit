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
    for _, client_ in ipairs(vim.lsp.get_active_clients({ bufnr = 0 })) do
      if kit.get(client_.server_capabilities, { 'linkedEditingRangeProvider' }) then
        client = Client.new(client_)
        break
      end
    end
    if not client then
      return Async.resolve(nil)
    end

    ---@type linkedit.kit.LSP.TextDocumentLinkedEditingRangeResponse?
    local response = client:textDocument_linkedEditingRange(params):await()
    if not response then
      return Async.resolve(nil)
    end

    local bufnr = vim.uri_to_bufnr(params.textDocument.uri)
    for i in ipairs(response.ranges) do
      local lines = vim.api.nvim_buf_get_lines(bufnr, response.ranges[i].start.line, response.ranges[i]['end'].line + 1, false)
      response.ranges[i] = Range.to_utf8(lines[1], lines[#lines], response.ranges[i], client.client.offset_encoding)
    end
    return Async.resolve(response)
  end)
end

return Source
