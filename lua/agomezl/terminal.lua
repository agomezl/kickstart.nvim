-- Terminal settings

-- [[Keybindings]]
vim.keymap.set('t','<C-b>','<C-\\><C-n>',{})

-- [[Options]]
vim.api.nvim_set_option('shell','zsh')

-- [[Hooks]]
vim.api.nvim_create_autocmd('TermOpen', {
  pattern = '*',
  group = 'agomezl',
  callback = function()
    vim.opt_local.number = false
  end
})
