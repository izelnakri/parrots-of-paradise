local Utils = require("parrots-of-paradise.utils")

local cwd = debug.getinfo(1).source:match("@?(.*/)")
local palette = Utils.parse_color_scheme_json(cwd .. "../../scheme.json")

local Config = {}

Config.defaults = {
  palette = palette,
  styles = {
    -- Style to be applied to different syntax groups.
    -- Value is any valid attr-list value for `:help nvim_set_hl`. Example:
    -- Comments = { italic = true },
    Boolean = { fg = palette.base0C },
    Changed = { fg = palette.base09 },
    Comment = { fg = palette.base0F },
    Delimiter = { fg = palette.base06 },
    DiagnosticWarn = { fg = palette.base09 },
    DiagnosticFloatingWarn = { fg = palette.base09, bg = palette.base01 },
    DiagnosticUnderlineWarn = { fg = nil, attr = "underline", sp = palette.base09 },
    DiffChange = { fg = palette.base09, bg = palette.base01 }, -- NOTE: is this needed?
    FloatBorder = { fg = palette.base05, bg = "#485848" }, -- NOTE: Maybe make bg base00
    Function = { fg = palette.base09 },
    Identifier = { fg = palette.base0D },
    Keyword = { fg = palette.base08 },
    LineNr = { fg = palette.base03 },
    Macro = { fg = palette.base09 },
    NormalFloat = { fg = palette.base05 }, -- NOTE: This is the background of K:hover, only add a border, maybe make bg base00
    Number = { fg = palette.base0C },
    SpecialChar = { fg = palette.base09 },
    String = { fg = palette.base0A },
    Structure = { fg = palette.base0C },
    Tag = { fg = palette.base0D },
    Type = { fg = palette.base09 },
    WinBar = { fg = palette.base04 },
    WinBarNC = { fg = palette.base04 },
    WinSeparator = { fg = palette.base02 },

    ["@variable"] = { fg = palette.base0D },
    ["@lsp.type.variable"] = { fg = palette.base0D },
    ["@function.method.call"] = { fg = palette.base09 },

    ["@markup.heading"] = { fg = palette.base0E, attr = "bold" },
    ["@markup.link.label"] = { fg = palette.base0D, attr = "underline" },
    ["@markup.link.url"] = { fg = palette.base0C },
    ["@markup.list"] = { fg = palette.base09 },
    ["@markup.raw"] = { fg = palette.base06, attr = "bold" },
    ["@markup.strong"] = { fg = palette.base03, attr = "bold" },

    ["diffChanged"] = { fg = palette.base09 },
    ["gitcommitHeader"] = { fg = palette.base09 },
    ["GitSignsChange"] = { fg = palette.base09, bg = palette.base01 },
    ["GitSignsUntracked"] = { fg = palette.base0F, bg = palette.base01 },
    ["MiniMapSymbolLine"] = { fg = palette.base08 },
    ["NeoTreeGitModified"] = { fg = palette.base09 },
    ["NeoTreeGitUntracked"] = { fg = palette.base0F },
    ["NoiceConfirmBorder"] = { fg = palette.base09 },
    ["NotifyWARNBorder"] = { fg = palette.base09 },
    ["NotifyWARNIcon"] = { fg = palette.base09 },
    ["NotifyWARNTitle"] = { fg = palette.base09 },
    ["WhichKeyGroup"] = { fg = palette.base09 },
    -- NOTE :Maybe in future change: BufferInactiveTarget, BufferVisible, BufferVisibleTarget, BufferVisibleMod
  },
}

return Config
