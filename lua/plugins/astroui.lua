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
    -- colorscheme = "catppuccin",
    -- colorscheme = "astrodark",
    colorscheme = "kanagawa",
  },
}
