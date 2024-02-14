vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires =  'nvim-lua/plenary.nvim' 
	}

	use { 
		'catppuccin/nvim', 
		as = 'catppuccin',
		config = function() 
			vim.cmd('colorscheme catppuccin')
		end
	}

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use 'xiyaowong/transparent.nvim'

	use 'ThePrimeagen/harpoon'

	use 'mbbill/undotree'

	use 'tpope/vim-fugitive'

	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-buffer', 
			'hrsh7th/cmp-path',		
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip'
		}
	}

	use {
		'williamboman/mason.nvim',
		requires = {
			'williamboman/mason-lspconfig.nvim'
		}
	}

	use {
		'neovim/nvim-lspconfig',
		requires = {
			'hrsh7th/cmp-nvim-lsp'
		}
	}

	use { "mfussenegger/nvim-jdtls" }

    use { 'christoomey/vim-tmux-navigator' }
end)
