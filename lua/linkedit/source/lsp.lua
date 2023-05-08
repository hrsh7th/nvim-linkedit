local kit = require('linkedit.kit')
local Async = require('linkedit.kit.Async')
local Client = require('linkedit.kit.LSP.Client')

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

    local response = client:textDocument_linkedEditingRange(params):await()
    if not response then
      return Async.resolve(nil)
    end

    return Async.resolve(response)
  end)
end

return Source
