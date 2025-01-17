-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
      }


	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use 'prichrd/netrw.nvim'

	use 'nvim-tree/nvim-web-devicons'
	
	use 'EdenEast/nightfox.nvim'
	
	use 'nvim-tree/nvim-tree.lua'

	use 'navarasu/onedark.nvim'

	--[[ use {
    		'MordechaiHadad/nvim-lspmanager',
		requires = {'neovim/nvim-lspconfig'},
		config = function()
			require('lspmanager').setup()
		end,
	} --]]

	use {'neoclide/coc.nvim', branch = 'release'}

	use 'm4xshen/autoclose.nvim'

	-- Plugins for autocompletion (cmp)
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	
	use({
		"L3MON4D3/LuaSnip",
	-- 	follow latest release.
		tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!:).
		run = "make install_jsregexp"
	})
	


end)

