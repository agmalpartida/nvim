---@type LazySpec
return {
  "HakonHarnes/img-clip.nvim",
  opts = function(_, opts)
    opts.default = {
      -- file and directory options
      dir_path = "assets",
      -- dir_path = function()
      --   return vim.fn.expand("%:t:r")
      -- end,
      extension = "png",
      -- file_name = "%Y-%m-%d-%H-%M-%S",
      file_name = function()
        local filename = vim.fn.expand("%:t:r") -- Nombre del archivo sin extensión
        local date = os.date("%Y-%m-%d_%H-%M-%S") -- Fecha y hora
        return filename .. "_" .. date -- Formato: nombreArchivo_YYYY-MM-DD_HH-MM-SS
      end,
      notify = true,
      use_absolute_path = false,
      relative_to_current_file = true,
      -- prompt options
      prompt_for_file_name = false,
    }
  end,
}

