if vim.g.vscode then
    -- VSCode Neovim
    require "user.vscode_keymaps"
    require "user.yc_vscode_keymaps"
    require("config.lazy")
  else
    -- Ordinary Neovim
    require "user.yc_vscode_keymaps"
    require("config.lazy")
  end
