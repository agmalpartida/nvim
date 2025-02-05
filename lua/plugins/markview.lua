-- For `plugins/markview.lua` users.
return {
  "OXY2DEV/markview.nvim",
  opts = function(_, opts)
    opts.config = {
      preview = {
          enable = true,
      },
      markdown = {
          enable = false,
      },
    }
  end,
};
