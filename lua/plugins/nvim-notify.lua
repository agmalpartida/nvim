---@type LazySpec
return {
  "rcarriga/nvim-notify",
  specs = {
    {
      "AstroNvim/astrocore",
      ---@type AstroCoreOpts
      opts = {
        mappings = {
          n = {
            ["[c"] = { function() require("treesitter-context").go_to_context() end, desc = "Go to context" },
          },
        },
      },
    },
  },
}
