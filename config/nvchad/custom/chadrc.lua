-- Just an example, supposed to be placed in /lua/custom/
local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,

M.plugins = require("custom.plugins")

-- example of changing theme:
M.ui = {
	theme = "gruvchad",
}

return M
