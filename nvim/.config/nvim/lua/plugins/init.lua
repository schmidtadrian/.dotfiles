return {
    {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- {
    --   'nvim-treesitter/nvim-treesitter',
    --   -- build = function()
    --   --     require("nvim-treesitter.install").update({ with_sync = true })
    --   -- end
    --   -- build = ':TSUpdate'
    -- },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ':TSUpdate'
    },
    {
      "nvim-tree/nvim-tree.lua",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function()
        require("nvim-tree").setup {}
      end,
    },
    {
      'numToStr/Comment.nvim',
      config = function()
        require('Comment').setup()
      end
    },
    {
	'nvim-lualine/lualine.nvim',
    	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require('lualine').setup({})
	end
    },
    {
	 'windwp/nvim-autopairs',  -- Auto pairs for '(' '[' '{'
	 config = function()
		 require("nvim-autopairs").setup()
	 end
    },
    {
	 'kylechui/nvim-surround', -- Surround
	 config = function()
		 require("nvim-surround").setup()
	end
    },
    {
	 "lukas-reineke/indent-blankline.nvim",
	 config = function()
		 require("indent_blankline").setup()
	end
    },
    {
	 "RRethy/vim-illuminate", -- highlight word under cursor
      	config = function()
	      require('illuminate').configure({})
	end
    },

}
