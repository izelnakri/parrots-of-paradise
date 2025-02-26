-- NOTE: top bar has to be highlight color, and the active one highlight2 when telescope highlights implemented
local has_mini_base16, base16 = pcall(require, "mini.base16")
if not has_mini_base16 then
  error("parrots-of-paradise requires echasnovski/mini.base16!")
end
local Config = require("parrots-of-paradise.config")
local Utils = require("parrots-of-paradise.utils")

local M = {}

function M.setup(options)
  M.options = vim.tbl_deep_extend("force", Config.defaults, options or {})

  if vim.g.colors_name then -- only needed to clear when not the default colorscheme
    vim.cmd("hi clear")
  end

  vim.opt.termguicolors = true
  vim.g.colors_name = "parrots-of-paradise"

  base16.setup({
    palette = M.options.palette,
  })

  for key, value in pairs(M.options.styles) do
    Utils.highlight(key, value)
  end
end

return M
