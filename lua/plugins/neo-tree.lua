---@type LazySpec
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      --window = 40,
      default_component_configs = {
        container = {
          enable_character_fade = false,
        },
        -- file_size = {
        --   enabled = true,
        --   required_width = 24, -- min width of window required to show this column
        -- },
        -- type = {
        --   enabled = true,
        --   required_width = 122, -- min width of window required to show this column
        -- },
        -- last_modified = {
        --   enabled = true,
        --   required_width = 88, -- min width of window required to show this column
        -- },
        -- created = {
        --   enabled = true,
        --   required_width = 110, -- min width of window required to show this column
        -- },
        -- symlink_target = {
        --   enabled = false,
        -- },
      },
      window = {
          position = "left",
          width = 40,
          mapping_options = {
            noremap = true,
            nowait = true,
          },
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignore = false,
          hide_by_name = {
            ".DS_Store",
            "thumbs.db",
            "node_modules",
            "__pycache__",
          },
        },
      },
    },
  },
}
