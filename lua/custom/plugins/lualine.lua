return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  opts = {
    options = {
      icons_enabled = true,
      theme = 'auto',
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {},
      lualine_x = {'encoding', 'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
    },
    inactive_sections = {
      lualine_c = {{'filename', path = 1 }},
      lualine_x = {'location'},
    },
    tabline = {
      lualine_b = {{'filename', path = 1}},
      lualine_z = {{'tabs', show_modified_status = false}}
    },
  },
}

