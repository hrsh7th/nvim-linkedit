local kit = require('linkedit.kit')
local Async = require('linkedit.kit.Async')
local has_locals, locals = pcall(require, 'nvim-treesitter.locals')

---@type linkedit.Source
local Source = {}
Source.__index = Source

function Source.new()
  return setmetatable({}, Source)
end

---@param params linkedit.kit.LSP.LinkedEditingRangeParams
function Source:fetch(params)
  return Async.run(function()
    if not has_locals then
      return nil
    end

    local bufnr = vim.uri_to_bufnr(params.textDocument.uri)
    local filetype = vim.api.nvim_buf_get_option(bufnr, 'filetype')
    vim.treesitter.get_parser(bufnr, filetype):parse()

    local cursor = vim.api.nvim_win_get_cursor(0)
    cursor[1] = cursor[1] - 1
    cursor[2] = cursor[2] - 1

    local cursor_node = vim.treesitter.get_node({
      pos = cursor,
    })
    if not cursor_node then
      return nil
    end

    local origin_node = locals.find_definition(cursor_node, bufnr)
    if not origin_node then
      return nil
    end
    if not vim.treesitter.is_in_node_range(origin_node, cursor[1], cursor[2]) then
      return nil
    end

    local scopes = locals.get_definition_scopes(origin_node, bufnr)
    local ranges = {}
    for _, scope in ipairs(scopes) do
      local usages = locals.find_usages(origin_node, scope, bufnr)
      if usages then
        ranges = kit.concat(ranges, kit.map(usages, function(usage)
          local row1, col1, row2, col2 = usage:range()
          return {
            start = {
              line = row1,
              character = col1,
            },
            ['end'] = {
              line = row2,
              character = col2,
            }
          }
        end))
      end
    end
    if #ranges == 0 then
      return nil
    end
    return { ranges = ranges }
  end)
end

return Source
