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
      if (
            kit.get(client_.server_capabilities, { 'definitionProvider' })
            and kit.get(client_.server_capabilities, { 'documentHighlightProvider' })
          ) then
        client = Client.new(client_)
        break
      end
    end
    if not client then
      return Async.resolve(nil)
    end

    ---@type linkedit.kit.LSP.TextDocumentDefinitionResponse
    local definitions = client:textDocument_definition(params --[[@as linkedit.kit.LSP.DefinitionParams]]):await()
    if not definitions then
      return Async.resolve(nil)
    end

    local bufnr = vim.uri_to_bufnr(params.textDocument.uri)
    local cursor = vim.api.nvim_win_get_cursor(0)
    cursor[1] = cursor[1] - 1

    -- to array.
    definitions = kit.to_array(definitions)

    -- to LocationLink.
    definitions = vim.tbl_map(function(location)
      if location and location.uri then
        return {
          targetUri = location.uri,
          targetRange = location.range,
          targetSelectionRange = location.range,
        }
      end
      return location
    end, definitions)

    -- to Buffer Location.
    definitions = vim.tbl_filter(function(location)
      return location.targetUri == params.textDocument.uri
    end, definitions)

    -- ignore if multiple buffer locations.
    if #definitions ~= 1 then
      return
    end

    ---@type linkedit.kit.LSP.Range?
    local definition_range = nil
    for _, location in ipairs(kit.to_array(definitions)) do
      local lines = vim.api.nvim_buf_get_lines(bufnr, location.targetSelectionRange.start.line, location.targetSelectionRange['end'].line + 1, false)
      local range = Range.to_utf8(lines[1], lines[#lines], location.targetSelectionRange, client.client.offset_encoding)
      local included = true
      included = included and (range.start.line < cursor[1] or (range.start.line == cursor[1] and range.start.character <= cursor[2]))
      included = included and (range['end'].line > cursor[1] or (range['end'].line == cursor[1] and range['end'].character >= cursor[2]))
      if included then
        definition_range = range
      end
    end
    if not definition_range then
      return Async.resolve(nil)
    end

    ---@type linkedit.kit.LSP.TextDocumentDocumentHighlightResponse
    local highlights = client:textDocument_documentHighlight(params --[[@as linkedit.kit.LSP.DocumentHighlightParams]]):await()
    if not highlights then
      return Async.resolve(nil)
    end

    local ranges = {} --[[@as linkedit.kit.LSP.Range[]]
    for _, highlight in ipairs(highlights) do
      local lines = vim.api.nvim_buf_get_lines(bufnr, highlight.range.start.line, highlight.range['end'].line + 1, false)
      local range = Range.to_utf8(lines[1], lines[#lines], highlight.range, client.client.offset_encoding)
      table.insert(ranges, range)
    end
    return { ranges = ranges }
  end)
end

return Source
