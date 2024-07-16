return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      python = { 'black' },
      json = { 'fixjson' },
      bzl = { 'buildifier' },
      rust = { 'rustfmt' },
    },
  },
}
