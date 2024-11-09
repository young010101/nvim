return {
    -- if some code requires a module from an unloaded plugin, it will be automatically loaded.
    -- So for api plugins like devicons, we can always set lazy=true
    { "nvim-tree/nvim-web-devicons", lazy = true },
	-- Example for neo-tree.nvim
	{
	  "nvim-neo-tree/neo-tree.nvim",
	    keys = {
	      { "<leader>ft", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
	    },
	    config = function()
	      require("neo-tree").setup()
	    end,
	}
  }
