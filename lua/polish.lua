--if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
--
-- When installed, ansible-language-server is invoked on .yaml files where filetype=yaml.ansible. Rather than setting this manually each time, we can leverage our polish function to set the filetype based on standard Ansible filesystem patterns.
return {
  polish = function()
    local function yaml_ft(path, bufnr)
      -- get content of buffer as string
      local content = vim.filetype.getlines(bufnr)
      if type(content) == "table" then content = table.concat(content, "\n") end

      -- check if file is in roles, tasks, or handlers folder
      local path_regex = vim.regex "(tasks\\|roles\\|handlers)/"
      if path_regex and path_regex:match_str(path) then return "yaml.ansible" end
      -- check for known ansible playbook text and if found, return yaml.ansible
      local regex = vim.regex "hosts:\\|tasks:"
      if regex and regex:match_str(content) then return "yaml.ansible" end

      -- return yaml if nothing else
      return "yaml"
    end
--
  vim.filetype.add {
    extension = {
      yml = yaml_ft,
      yaml = yaml_ft,
    },
    -- filename = {
    --   ["yml"] = "yaml_ft",
    --   ["yaml"] = "yaml_ft",
    -- },
    -- pattern = {
    --   ["~/%.config/foo/.*"] = "fooscript",
    -- },
  }
end,
}
