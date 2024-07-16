return {
  "mhartington/formatter.nvim",
  version = "*",
  config = true,
  opts = function ()
    local augroup = vim.api.nvim_create_augroup
    local autocmd = vim.api.nvim_create_autocmd
    augroup("__formatter__", { clear = true })
    autocmd("BufWritePost", {
      group = "__formatter__",
      command = ":FormatWrite",
    })
    vim.keymap.set('n','<leader>f',':Format',{ desc = '[F]ormat'})
    vim.keymap.set('n','<leader>F',':FormatWrite',{ desc = '[F]ormat and write'})
    return {
      logging = true,
      log_level = vim.log.levels.WARN,
      filetype = {
        json = require("formatter.filetypes.json").fixjson,
        python = require("formatter.filetypes.python").black,
        rust = require("formatter.filetypes.rust").rustfmt,
      }
    }
  end
}
