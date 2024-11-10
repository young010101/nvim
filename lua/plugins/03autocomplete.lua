return {{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
}, {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = {"nvim-treesitter/nvim-treesitter"}
}, {"neovim/nvim-lspconfig"}, {
    "hrsh7th/nvim-cmp",
    dependencies = {"hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-buffer"}
}, {
    "L3MON4D3/LuaSnip",
    dependencies = {"saadparwaiz1/cmp_luasnip"}
}, {
    "williamboman/mason.nvim",
    dependencies = {"williamboman/mason-lspconfig.nvim"}
}, {"rafamadriz/friendly-snippets"}}
