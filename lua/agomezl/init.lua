vim.api.nvim_create_augroup('agomezl',{})

vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

require('agomezl.spellcheck')
require('agomezl.terminal')
require('agomezl.whitespaces')
require('agomezl.keys')

