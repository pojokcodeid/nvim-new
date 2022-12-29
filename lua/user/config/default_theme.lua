local m = {
  -- Modify the color palette for the default theme
  colors = {
    fg = "#abb2bf",
    bg = "#1e222a",
  },
  highlights = function(hl) -- or a function that returns a new table of colors to set
    local C = require "default_theme.colors"

    hl.Normal = { fg = C.fg, bg = C.bg }

    -- New approach instead of diagnostic_style
    -- hl.DiagnosticError.italic = true
    -- hl.DiagnosticHint.italic = true
    -- hl.DiagnosticInfo.italic = true
    -- hl.DiagnosticWarn.italic = true

    return hl
  end,
  -- enable or disable highlighting for extra plugins
  plugins = {
    aerial = true,
    beacon = false,
    bufferline = true,
    cmp = false,
    dashboard = true,
    highlighturl = true,
    hop = false,
    indent_blankline = true,
    lightspeed = false,
    ["neo-tree"] = false,
    notify = true,
    ["nvim-tree"] = true,
    ["nvim-web-devicons"] = true,
    rainbow = true,
    symbols_outline = false,
    telescope = true,
    treesitter = true,
    vimwiki = false,
    ["which-key"] = true,
  },
}
return m
