---@type LazySpec
return {
  "HakonHarnes/img-clip.nvim",
  opts = function(_, opts)
    opts.default = {
     dir_path = "assets", 
     extension = "png",
     file_name = "%Y-%m-%d-%H-%M-%S",
     use_absolute_path = false,
     relative_to_current_file = true,
    }
  end,
}

