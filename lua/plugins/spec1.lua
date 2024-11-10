return { -- So for api plugins like devicons, we can always set lazy=true
{
    "nvim-neo-tree/neo-tree.nvim",
    keys = {{
        "<leader>ft",
        "<cmd>Neotree toggle<cr>",
        desc = "NeoTree"
    }},
    config = function()
        require("neo-tree").setup()
    end
}}
