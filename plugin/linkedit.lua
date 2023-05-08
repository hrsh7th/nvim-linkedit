local memoize = setmetatable({
  bufnr = nil,
  changedtick = nil,
  cursor_row = nil,
  cursor_col = nil,
  update = function(self)
    self.bufnr = vim.api.nvim_get_current_buf()
    self.changedtick = vim.api.nvim_buf_get_changedtick(self.bufnr)
    self.cursor_row, self.cursor_col = unpack(vim.api.nvim_win_get_cursor(0))
  end
}, {
  __call = function(self, f)
    return function(...)
      local new_state = {}
      new_state.bufnr = vim.api.nvim_get_current_buf()
      new_state.changedtick = vim.api.nvim_buf_get_changedtick(new_state.bufnr)
      new_state.cursor_row, new_state.cursor_col = unpack(vim.api.nvim_win_get_cursor(0))
      if self.bufnr ~= new_state.bufnr or self.changedtick ~= new_state.changedtick or self.cursor_row ~= new_state.cursor_row or self.cursor_col ~= new_state.cursor_col then
        return f(...)
      end
    end
  end
})

local group = vim.api.nvim_create_augroup('linkedit', {
  clear = true,
})

vim.api.nvim_create_autocmd({ 'ModeChanged' }, {
  group = group,
  pattern = {
    '*:no',
    '*:nov',
    '*:noV',
    vim.api.nvim_replace_termcodes('*:no<C-v>', true, true, true),
    'n:i',
    'v:i',
    'V:i',
    vim.api.nvim_replace_termcodes('<C-v>:i', true, true, true)
  },
  callback = memoize(function()
    local linkedit = require('linkedit')
    if linkedit.config:get().enabled then
      linkedit.fetch()
      memoize:update()
    end
  end)
})

vim.api.nvim_create_autocmd({ 'TextChanged', 'TextChangedI', 'TextChangedP' }, {
  group = group,
  pattern = '*',
  callback = memoize(function()
    local linkedit = require('linkedit')
    if linkedit.config:get().enabled then
      linkedit.sync()
      memoize:update()
    end
  end)
})
