--add evergarden theme
return {
  "comfysage/evergarden",
  priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
  opts = {
    transparent_background = false,
    contrast_dark = "medium", -- 'hard'|'medium'|'soft'
    override_terminal = true,
    style = {
      tabline = { reverse = true, color = "green" },
      search = { reverse = false, inc_reverse = true },
      types = { italic = true },
      keyword = { italic = true },
      comment = { italic = false },
      sign = { highlight = false },
    },
  },
}
