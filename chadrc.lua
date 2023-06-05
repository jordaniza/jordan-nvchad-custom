---@type ChadrcConfig
local M = {}
M.ui = {
  theme = "gatekeeper",
  transparency = true,
  changed_themes = {
    gatekeeper = {
      base_30 = {
        -- make comments and line nums stand out a bit more
        grey = "#828282",
        grey_fg = "#9b9b9b",
      },
    },
  },
}
M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"
return M
