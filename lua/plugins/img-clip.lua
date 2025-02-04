---@type LazySpec
return {
    "HakonHarnes/img-clip.nvim",
    opts = {
      -- add options here
      -- or leave it empty to use the default settings
      dir_path = "TEST", ---@type string | fun(): string
      extension = "png", ---@type string | fun(): string
      file_name = "%Y-%m-%d-%H-%M-%S", ---@type string | fun(): string
      relative_to_current_file = true,
    },
    keys = {
      -- suggested keymap
      { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
    },
}

