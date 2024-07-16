
return {
  "max397574/better-escape.nvim",
  keys = function(_, keys)
    local plugin = require("lazy.core.config").spec.plugins["better-escape.nvim"]
    local opts = require("lazy.core.plugin").values(plugin, "opts", false)
    local mappings
    if opts.mappings ~= false then
      mappings = vim.tbl_deep_extend("keep", opts.mappings or {}, {
        i = { j = { k = "<Esc>", j = "<Esc>" } },
        c = { j = { k = "<Esc>", j = "<Esc>" } },
        t = { j = { k = "<Esc>", j = "<Esc>" } },
        v = { j = { k = "<Esc>" } },
        s = { j = { k = "<Esc>" } },
      })
    end

    for mode, mapping in pairs(mappings) do
      for lhs, _ in pairs(mapping) do
        table.insert(keys, { lhs, mode = mode })
      end
    end
  end,
  opts = { timeout = 300 },
}

