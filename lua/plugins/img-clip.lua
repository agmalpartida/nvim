---@type LazySpec
return {
    "HakonHarnes/img-clip.nvim",
    opts = {
      opts = {
        -- add options here
        -- or leave it empty to use the default settings
        dir_path = "TEST",
        extension = "png",
        file_name = "%Y-%m-%d-%H-%M-%S",
        relative_to_current_file = true,
      },
      keys = {
        -- suggested keymap
        { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
      },
    },
}

