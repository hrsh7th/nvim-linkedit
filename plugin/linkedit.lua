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
    local linkedit = require('linkedit')
    if linkedit.config:get().enabled then
      linkedit.fetch()
    end
  end
})
vim.api.nvim_create_autocmd('InsertEnter', {
  group = group,
  pattern = '*',
  callback = function()
    local linkedit = require('linkedit')
    if linkedit.config:get().enabled then
      linkedit.fetch()
    end
  end
})

vim.api.nvim_create_autocmd({ 'TextChanged', 'TextChangedI', 'TextChangedP' }, {
  group = group,
  pattern = '*',
  callback = function()
    local linkedit = require('linkedit')
    if linkedit.config:get().enabled then
      linkedit.sync()
    end
  end
})

