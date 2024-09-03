---@type LazySpec
return {
  -- { "goolord/alpha-nvim", enabled = false },
    "goolord/alpha-nvim",
    opts = function(_, opts) -- override the options using lazy.nvim
      -- customize the dashboard header
      opts.section.header.val = {
        [[                                                                     ]],
        [[       ███████████           █████      ██                     ]],
        [[      ███████████             █████                             ]],
        [[      ████████████████ ███████████ ███   ███████     ]],
        [[     ████████████████ ████████████ █████ ██████████████   ]],
        [[    █████████████████████████████ █████ █████ ████ █████   ]],
        [[  ██████████████████████████████████ █████ █████ ████ █████  ]],
        [[ ██████  ███ █████████████████ ████ █████ █████ ████ ██████ ]],
        [[ ██████   ██  ███████████████   ██ █████████████████ ]],
        [[ ██████   ██  ███████████████   ██ █████████████████ ]],
      }
      table.insert(
        opts.section.buttons.val,
        opts.button(
          "n",
          "  Work Notes",
          ':lua require("telescope.builtin").find_files { prompt_title = "Work Notes", cwd = "~/Git/fullstep/docs/content/posts/", follow = true }<CR>'
        )
      )
      return opts
    end,
}
