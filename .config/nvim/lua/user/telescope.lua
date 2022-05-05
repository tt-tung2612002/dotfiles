local telescope = require('telescope')
local actions = require('telescope.actions')


telescope.setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
--  layout_config = {
--      width = 0.98,
--      preview_cutoff = 40
--  },
    layout_config = {
      horizontal = {
        width_padding = 0.04,
        height_padding = 0.1,
        preview_width = 0.6,
      },
      vertical = {
        width_padding = 0.05,
        height_padding = 1,
        preview_height = 0.5,
      },
    },
  }
}



