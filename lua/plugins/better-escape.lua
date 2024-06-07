-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize None-ls sources

---@type LazySpec

return {
  "max397574/better-escape.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    -- local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      mapping = { "jk", "kj" }, -- a table with mappings to use
      timeout = 500, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
      clear_empty_lines = false, -- clear line after escaping if there is only whitespace
      --keys = "<Esc>", -- keys used for escaping, if it is a function will use the result everytime
    }
    return config -- return final config table
  end,
}
