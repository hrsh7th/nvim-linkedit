local kit = require('linkedit.kit')
local RegExp = require('linkedit.kit.Vim.RegExp')
local Async = require('linkedit.kit.Async')
local Config = require('linkedit.kit.App.Config')
local ns = vim.api.nvim_create_namespace('linkedit')

---@class linkedit.Source
---@field public fetch fun(self: unknown, params: linkedit.kit.LSP.LinkedEditingRangeParams): linkedit.kit.Async.AsyncTask linkedit.kit.LSP.TextDocumentLinkedEditingRangeResponse

---@class linkedit.kit.App.Config.Schema
---@field public enabled boolean
---@field public sources { name: string }[]
---@field public fetch_timeout number
---@field public keyword_pattern string
---@field public debug? boolean

---Get range from mark_id.
---@param mark_id number
---@return { s: { [1]: number, [2]: number }, e: { [1]: number, [2]: number } }
local function get_range_from_mark(mark_id)
  local mark = vim.api.nvim_buf_get_extmark_by_id(0, ns, mark_id, {
    details = true,
  })
  local s = { mark[1], mark[2] }
  local e = { mark[3].end_row, mark[3].end_col }
  if s[1] > e[1] or (s[1] == e[1] and s[2] > e[2]) then
    local t = s
    s = e
    e = t
  end
  return { s = s, e = e }
end

---Get text from mark_id.
---@param mark_id number
---@return string
local function get_text_from_mark(mark_id)
  local range = get_range_from_mark(mark_id)
  local lines = vim.api.nvim_buf_get_text(0, range.s[1], range.s[2], range.e[1], range.e[2], {})
  return table.concat(lines, '\n')
end

---Set text for mark_id.
---@param mark_id number
---@param text string
local function set_text_for_mark(mark_id, text)
  local range = get_range_from_mark(mark_id)
  vim.api.nvim_buf_set_text(0, range.s[1], range.s[2], range.e[1], range.e[2], vim.split(text, '\n', { plain = true }))
end

local linkedit = {
  config = Config.new({
    enabled = true,
    fetch_timeout = 500,
    keyword_pattern = [[\k*]],
    debug = false,
    sources = {
      {
        name = 'lsp_linked_editing_range',
        on = { 'insert', 'operator' },
      },
    },
  })
}

---Setup interface for global/filetype/buffer.
linkedit.setup = linkedit.config:create_setup_interface()
linkedit.setup.filetype('php', {
  keyword_pattern = [[\$\?\k*]],
})

---@type table<string, linkedit.Source>
linkedit.registry = {}

---Clear current state.
function linkedit.clear()
  vim.api.nvim_buf_clear_namespace(0, ns, 0, -1)
end

---Fetch linked editing ranges.
function linkedit.fetch(on)
  linkedit.clear()

  local ok, res = pcall(function()
    Async.run(function()
      local params = vim.lsp.util.make_position_params()

      ---@type linkedit.kit.LSP.TextDocumentLinkedEditingRangeResponse
      local response
      for _, source_config in ipairs(linkedit.config:get().sources) do
        local on_config = kit.get(source_config, { 'on' }, { 'insert', 'operator' })
        if vim.tbl_contains(on_config, on) then
          local source = linkedit.registry[source_config.name]
          if source then
            response = source:fetch(params):catch(function(err)
              if linkedit.config:get().debug then
                vim.print(err)
              end
              return nil
            end):await()
            if response and response.ranges and #response.ranges > 0 then
              break
            end
          end
        end
      end
      if not response then
        return
      end
      if #response.ranges < 2 then
        return
      end

      local unique = {}
      for _, range in ipairs(response.ranges --[=[@as linkedit.kit.LSP.Range[]]=]) do
        local range_id = table.concat({ range.start.line, range.start.character, range['end'].line, range['end'].character }, ':')
        if not unique[range_id] then
          unique[range_id] = true
          vim.api.nvim_buf_set_extmark(0, ns, range.start.line, range.start.character, {
            end_line = range['end'].line,
            end_col = range['end'].character,
            hl_group = 'LinkedEditingRange',
            right_gravity = false,
            end_right_gravity = true,
          })
        end
      end
    end):sync(linkedit.config:get().fetch_timeout)
  end)
  if not ok then
    if linkedit.config:get().debug then
      vim.print(res)
    end
  end
end

---Sync all linked editing range.
function linkedit.sync()
  local cursor = vim.api.nvim_win_get_cursor(0)
  cursor[1] = cursor[1] - 1

  -- ignote changes that occurred by undo/redo.
  local undotree = vim.fn.undotree()
  if undotree.seq_last ~= undotree.seq_cur then
    return
  end

  ---@type number[]
  local mark_ids = kit.map(vim.api.nvim_buf_get_extmarks(0, ns, 0, -1, {}), function(mark)
    return mark[1]
  end)

  -- get origin mark.
  local origin_mark_id = nil
  for _, mark_id in ipairs(mark_ids) do
    local range = get_range_from_mark(mark_id)
    local included = true
    included = included and (range.s[1] < cursor[1] or (range.s[1] == cursor[1] and range.s[2] <= cursor[2]))
    included = included and (range.e[1] > cursor[1] or (range.e[1] == cursor[1] and range.e[2] >= cursor[2]))
    if included then
      origin_mark_id = mark_id
      break
    end
  end
  if not origin_mark_id then
    return
  end

  -- get origin text.
  local origin_text = get_text_from_mark(origin_mark_id)
  if RegExp.get('^' .. linkedit.config:get().keyword_pattern .. '$'):match_str(origin_text) ~= 0 then
    return linkedit.clear()
  end

  -- apply all marks.
  for _, mark_id in ipairs(mark_ids) do
    if mark_id ~= origin_mark_id then
      set_text_for_mark(mark_id, origin_text)
    end
  end
end

linkedit.registry['lsp_linked_editing_range'] = require('linkedit.source.lsp_linked_editing_range').new()
linkedit.registry['lsp_document_highlight'] = require('linkedit.source.lsp_document_highlight').new()

return linkedit
