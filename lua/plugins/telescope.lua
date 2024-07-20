--- we do have the binding <leader>fF which searches through all files as as the <leader>ff which only searches non-hidden files
---@type LazySpec
return {
 "goolord/alpha-nvim",
    plugins = {
      telescope = {
        pickers = {
          find_files = {
            hidden = true,
          },
        },
      },
    },
}
