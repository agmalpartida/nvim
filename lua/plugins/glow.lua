---@type LazySpec
return {
  "ellisonleao/glow.nvim",
  opts = {
    glow_path = "/usr/local/bin/glow", -- will be filled automatically with your glow bin in $PATH, if any
    install_path = "~/.local/bin", -- default path for installing glow binary
    border = "shadow", -- floating window border config
    style = "dark", -- dark|light, filled automatically with your current editor background, you can override using glow json style
    pager = true,
    width = 80,
    height = 100,
    width_ratio = 0.7, -- maximum width of the Glow window compared to the nvim window size (overrides `width`)
    height_ratio = 0.7,                            -- that has to pass before starting new render
  },
}
