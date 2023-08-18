vim.o.showtabline = 2

local theme = {
  fill = 'TabLineFill',
  -- Also you can do this: fill = { fg='#f2e9de', bg='#907aa9', style='italic' }
  head = 'TabLine',
  current_tab = 'TabLineSel',
  tab = 'TabLine',
  win = 'TabLine',
  tail = 'TabLine',
}

return {
  "nanozuki/tabby.nvim",
  config = function ()
    require('tabby.tabline').use_preset('tab_only', {
      theme = theme,
      nerdfont = true,
    })
  end,
}
