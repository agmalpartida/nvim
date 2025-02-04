-- For `plugins/markview.lua` users.
return {
    "OXY2DEV/markview.nvim",
    opts = {
      -- add options here
      -- or leave it empty to use the default settings
      dir_path = "assets", ---@type string | fun(): string
      extension = "png", ---@type string | fun(): string
      file_name = "%Y-%m-%d-%H-%M-%S", ---@type string | fun(): string
      use_absolute_path = true,
    },
    keys = {
      -- suggested keymap
      { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
    },
};
