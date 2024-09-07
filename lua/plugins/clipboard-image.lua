return {
  "ekickx/clipboard-image.nvim",
  {
  opts = {
    img_name = function ()
      -- If in visual mode use selected text
      local mode = vim.api.nvim_get_mode().mode
      if mode == 'v' then
        -- Recover visual selection by: `v` to exit visual mode then `gv`
        -- (If you don't exit then gv will select your previous selection)
        -- finally yank the the `a` register
        vim.cmd("normal! vgv\"ay")
        -- Evaluate contents of `a` register
        local selection = vim.api.nvim_eval("@a")
        -- Delete the selection (will be replaced by clipboard-image)
        vim.cmd("normal! gvd")
        return selection
      else
        -- Prompt for name
        vim.fn.inputsave()
        local name = vim.fn.input('Image Name: ')
        vim.fn.inputrestore()
        return name
      end
    end,
  },
  },
}

