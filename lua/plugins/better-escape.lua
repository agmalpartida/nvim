---@type LazySpec
return {
  "max397574/better-escape.nvim",
  opts = {
    mapping = { "jk", "kj" }, -- a table with mappings to use
    timeout = 500, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
    clear_empty_lines = false, -- clear line after escaping if there is only whitespace
    keys = "<Esc>", -- keys used for escaping, if it is a function will use the result everytime
  },
}
