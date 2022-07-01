-- Autocommand that reloads neovim whenever I save this file
vim.cmd[[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]]

-- protected call, avoids errors if packer isn't installed
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.init {
	display = {
    	open_fn  = require('packer.util').float, -- An optional function to open a window for packer's display
    	}
}

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	use 'jiangmiao/auto-pairs'
	use 'sainnhe/gruvbox-material'
	use {
		'rrethy/vim-hexokinase', 
		run = 'cd ~/.local/share/nvim/site/pack/packer/start/vim-hexokinase	&& make hexokinase'
	}
end)
