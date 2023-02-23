local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn
-- ensure that packer is installed
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end
vim.cmd('packadd packer.nvim')
local packer = require'packer'
local util = require'packer.util'
packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})
--- startup and add configure plugins
return require('packer').startup(function()
  local use = use
-- add you plugins here like:
 use 'morhetz/gruvbox'
 use 'eddyekofo94/gruvbox-flat.nvim'
 use 'kyazdani42/nvim-web-devicons'

 use 'sheerun/vim-polyglot'

 use 'rktjmp/lush.nvim'
 --" use 'ellisonleao/gruvbox.nvim'

 --" use 'sainnhe/gruvbox-material'
 use 'tomtom/tcomment_vim'
 use 'christoomey/vim-tmux-navigator'
 --" use 'airblade/vim-gitgutter'
 --" use 'mhinz/vim-signify'
 --" use 'vim-airline/vim-airline'
 --" use 'bling/vim-airline'
 use 'junegunn/vim-fnr'         -- visual find and replace mapped to <leader>R
 use 'tpope/vim-surround'
 use 'unblevable/quick-scope'   -- an always-on highlight for a unique character in every word on a line

 --" use 'mhinz/vim-startify'
 use 'glepnir/dashboard-nvim'

 use 'matze/vim-move'
 use 'junegunn/fzf' --,{'do': { ->fzf#install() } }
 use 'junegunn/fzf.vim'

 use 'voldikss/vim-floaterm'
 use 'junegunn/vim-pseudocl'
 use 'junegunn/vim-peekaboo'
 use 'junegunn/vim-slash'
 use 'tpope/vim-fugitive'

 use 'dense-analysis/ale'

 use 'hrsh7th/nvim-compe' --WARNING nvim-cmp is new version

 use 'lewis6991/gitsigns.nvim' -- TEST (replace gitgutter & signify)
 use 'nvim-lua/plenary.nvim'

 use {
  'nvim-lualine/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
}

-- " NOT YET SETUP
 use 'neovim/nvim-lspconfig'
 use 'ray-x/lsp_signature.nvim'
 use {
	 'kyazdani42/nvim-tree.lua',
	 requires = 'kyazdani42/nvim-web-devicons',
	 config = function() require'nvim-tree'.setup {} end
 }
 use 'phaazon/hop.nvim'
 use 'nathanmsmith/nvim-ale-diagnostic'

 --use 'williamboman/nvim-lsp-installer'
 use 'akinsho/bufferline.nvim'

 use 'nvim-telescope/telescope.nvim'
 use 'psliwka/vim-smoothie'
 use 'kyazdani42/nvim-tree.lua'
  end
)
