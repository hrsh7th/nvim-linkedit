local linkedit = require('linkedit')

local group = vim.api.nvim_create_augroup('linkedit', {
  clear = true,
})

vim.api.nvim_create_autocmd({ 'ModeChanged' }, {
  group = group,
  pattern = {
    '*:no',
    '*:nov',
    '*:noV',
    vim.api.nvim_replace_termcodes('*:no<C-v>', true, true, true)
  },
  callback = function()
    linkedit.fetch()
  end
})
vim.api.nvim_create_autocmd('InsertEnter', {
  group = group,
  pattern = '*',
  callback = function()
    linkedit.fetch()
  end
})

vim.api.nvim_create_autocmd({ 'TextChanged', 'TextChangedI', 'TextChangedP' }, {
  group = group,
  pattern = '*',
  callback = function()
    linkedit.sync()
  end
})

