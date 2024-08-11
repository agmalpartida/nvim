---@type LazySpec
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      priority = 1000, -- make sure to load this before all the other start plugins
      background = "medium",
      transparent_background_level = 0,
      italics = true,
      disable_italic_comments = false,
      on_highlights = function(hl, palette)
        hl.DiagnosticError = { fg = palette.none, bg = palette.none, sp = palette.red }
        hl.DiagnosticWarn = { fg = palette.none, bg = palette.none, sp = palette.yellow }
        hl.DiagnosticInfo = { fg = palette.none, bg = palette.none, sp = palette.blue }
        hl.DiagnosticHint = { fg = palette.none, bg = palette.none, sp = palette.green }
        hl.Normal = { fg = palette.none, bg = palette.none, sp = palette.red }
        hl.CursorColumn = { fg = palette.none, bg = palette.none, sp = palette.yellow }
        hl.CursorLine = { fg = palette.none, bg = palette.none, sp = palette.blue }
        hl.CursorLineNr = { fg = palette.none, bg = palette.none, sp = palette.green }
        hl.LineNr = { fg = palette.none, bg = palette.none, sp = palette.red }
      end,
      colours_override = function (palette)
        palette.red = "#b86466"
      end
    },
  },
}
