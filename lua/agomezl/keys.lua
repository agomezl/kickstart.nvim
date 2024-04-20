
-- [[Personal keymaps]]
vim.keymap.set('n',',p','o<ESC>p',{})
vim.keymap.set('n',',P','O<ESC>p',{})
vim.keymap.set('n','<leader>q',':b#<bar>bd#<CR>',{})

-- [[Tab keymaps]]
vim.keymap.set('n','<C-Tab>',':tabnext<CR>',{ desc = '[T]ab next'})
vim.keymap.set('n','<C-S-Tab>',':tabprevious<CR>',{ desc = '[T]ab previous'})

-- [[Telescope keymaps]]
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_ivy {
    winblend = 10,
    previewer = true,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>sw', function()
  require('telescope.builtin').grep_string(require('telescope.themes').get_ivy {
    winblend = 10,
    previewer = true,
  })
end, { desc = '[S]earch current [W]ord' })

vim.keymap.set('n', '<leader>sp', function()
  require('telescope.builtin').find_files({ default_text = vim.fn.getreg('"')})
end, { desc = '[S]earch current [P]ath in last yanked register' })

