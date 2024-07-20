if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
--
-- When installed, ansible-language-server is invoked on .yaml files where filetype=yaml.ansible. Rather than setting this manually each time, we can leverage our polish function to set the filetype based on standard Ansible filesystem patterns.
--
vim.filetype.add {
  extension = {
    yml = "yaml_ft",
    yaml = "yaml_ft",
  },
  filename = {
    ["yml"] = "yaml_ft",
    ["yaml"] = "yaml_ft",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}
