-- 设置行号
vim.opt.number = true

-- 设置缩进
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

if vim.g.vscode then
    -- VSCode Neovim
    require "user.vscode_keymaps"
    require "user.yc_vscode_keymaps"
    require("config.lazy")
  else
    -- Ordinary Neovim
    require "user.yc_vscode_keymaps"
    require("config.lazy")
    require('go').setup()
    require('lspconfig').gopls.setup({})
    -- Tree-sitter 配置
    require('nvim-treesitter.configs').setup({
      playground = {
        enable = true,
      },
      ensure_installed = { 'go' },
      highlight = {
        enable = true,
      },
      -- 启用代码折叠
      indent = {
        enable = true,
      },
    })

    -- 自动格式化
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*.go",
      callback = function()
        vim.lsp.buf.format()
      end,
    })
  end
