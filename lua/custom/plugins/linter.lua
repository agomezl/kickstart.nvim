return {
  'mfussenegger/nvim-lint',
  version = '*',
  config = function()
    local augroup = vim.api.nvim_create_augroup
    local autocmd = vim.api.nvim_create_autocmd
    augroup("__linter__", { clear = true })
    autocmd("BufWritePost", {
      group = "__linter__",
      callback = function ()
        require('lint').try_lint()
      end,
    })
  end
}
