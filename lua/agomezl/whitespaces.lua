vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  group = "agomezl",
  command = [[%s/\s\+$//e]],
})
