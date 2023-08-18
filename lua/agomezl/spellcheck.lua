-- Personal settings file

-- [[ Spell check ]]
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'gitcommit',
  group = 'agomezl',
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.spelllang = 'en_us'
    vim.opt_local.complete:append('kspell')
  end
})

