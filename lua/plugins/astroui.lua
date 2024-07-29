-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
  -- Colorscheme set on startup, a string that is used with `:colorscheme astrodark`
    colorscheme = "astrodark",
  -- Override highlights in any colorscheme
  -- Keys can be:
  --   `init`: table of highlights to apply to all colorschemes
  --   `<colorscheme_name>` override highlights in the colorscheme with name: `<colorscheme_name>`
    -- highlights = {
    -- -- this table overrides highlights in all colorschemes
    -- init = {
    --   Normal = { bg = "#000000" },
    -- },
    -- -- a table of overrides/changes when applying astrotheme
    -- astrotheme = {
    --   Normal = { bg = "#000000" },
    -- },
    -- },
    -- -- change colorscheme
    -- colorscheme = "astrodark",
    -- -- Icons can be configured throughout the interface
    -- icons = {
    --   -- configure the loading of the lsp in the status line
    --   LSPLoading1 = "⠋",
    --   LSPLoading2 = "⠙",
    --   LSPLoading3 = "⠹",
    --   LSPLoading4 = "⠸",
    --   LSPLoading5 = "⠼",
    --   LSPLoading6 = "⠴",
    --   LSPLoading7 = "⠦",
    --   LSPLoading8 = "⠧",
    --   LSPLoading9 = "⠇",
    --   LSPLoading10 = "⠏",
    -- },
  },
}
