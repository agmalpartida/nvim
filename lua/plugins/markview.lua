-- For `plugins/markview.lua` users.
return {
  "OXY2DEV/markview.nvim",
   opts = function(_, opts)
     opts.experimental = {
       date_formats = {},
       date_time_formats = {},
       text_filetypes = {},
       read_chunk_size = 1000,
       link_open_alerts = false,
       file_open_command = "tabnew",
       list_empty_line_tolerance = 3,
     }
     opts.highlight_groups = {}
     opts.preview = {
       enable = true, -- habilita la vista previa
       filetypes = { "md", "rmd", "quarto" }, -- tipos de archivos soportados
       ignore_buftypes = { "nofile" },
       ignore_previews = {},
     }
     opts.auto_start = false -- Iniciar automáticamente la vista previa al abrir un Markdown
     opts.auto_close = true -- Cerrar la vista previa al salir de Neovim
     opts.open_cmd = "firefox" -- Cambia por "google-chrome", "brave", etc.
     opts.port = 8000 -- Puerto para la vista previa
     opts.theme = "dark" -- Opciones: "light", "dark", "system"
     opts.preview = {
        icon_provider = "mini", -- "mini" or "devicons"
    }
   end,
};
