--if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-neo-tree/neo-tree.nvim",
  filesystem = {
    filtered_items = {
        visible = false,
        hide_dotfiles = false, 
        hide_gitignored = false,
        hide_by_name = {
          ".DS_Store",
          "thumbs.db",
          "node_modules",
          "__pycache__",
        },
      },
  }
}
