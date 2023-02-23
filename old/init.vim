set number
set noswapfile

" speed things up
syntax enable
set nocursorline	" highlight current line
set lazyredraw
set synmaxcol=128
syntax sync minlines=256
let g:CSApprox_loaded = 1
let g:python3_host_prog = 1
" set relativenumber


let mapleader=' '

set hidden " allow change buffer without save
set clipboard=unnamedplus
set ruler
set t_Co=256
set expandtab
set smartindent
set nobackup
set termguicolors
set noautochdir
set ts=4 sw=4 " tapstop, shiftwidth
set scrolloff=5 " lines above / below the cursor
" set scrolljump=10

" map ^P :Files

let g:dashboard_custom_shortcut={
\ 'last_session'       : 'SPC s l',
\ 'find_history'       : 'SPC h',
\ 'find_file'          : 'SPC f',
\ 'new_file'           : 'SPC n',
\ 'change_colorscheme' : 'SPC c',
\ 'find_word'          : 'SPC w',
\ 'book_marks'         : 'SPC b',
\ 'Git Files'          : 'SPC g',
\ }

nnoremap <leader>h :History<CR>
nnoremap <leader>f :Files<return>
nnoremap <leader>n :n<CR>
nnoremap <leader>c :Colors<CR>
nnoremap <leader>w :Rg<CR>
nnoremap <leader>b :Marks<CR>

nnoremap <silent> <C-f> :GFiles<return>
nnoremap <leader>F :FloatermNew!<CR>
nnoremap <leader>e :ALENext<CR>
nnoremap <leader>E :ALEPrevious<CR>
nnoremap <leader>t :NvimTreeToggle<CR>
nnoremap Q :q!<CR>

nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>


fun! SetupCommandAlias(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun
call SetupCommandAlias('src', 'source ~/.config/nvim/init.vim')
call SetupCommandAlias('initvim', 'e ~/.config/nvim/init.vim')
call SetupCommandAlias('tree', 'NvimTreeToggle')
" cnoreabbrev <expr> src ((getcmdtype() is# ':' && getcmdline() is# ':')?('source ~/.config/nvim/init.vim'):('src'))
" cnoreabbrev <expr> init.vim ((getcmdtype() is# ':' && getcmdline() is# ':')?('source ~/.config/nvim/init.vim'):('init.vim'))
" cnoreabbrev <expr> init.vim ((getcmdtype() is# ':' && getcmdline() is# ':')?('n ~/.config/nvim/init.vim'):('init.vim'))

" cnoremap src source ~/.config/nvim/init.vim
" cnoremap init.vim source ~/.config/nvim/init.vim

nmap <C-n> :bn<CR> " Next buffer
nmap <C-p> :bp<CR> " previous buffer
nmap <C-#> :b#<CR> " previous buffer you were in
nmap <C-3> :b#<CR> " ditto
nmap ; :

"call plug#begin(stdpath('config') . '/init.vim')
call plug#begin(stdpath('config') . '/plugged')
"call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'eddyekofo94/gruvbox-flat.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'rktjmp/lush.nvim'
" Plug 'ellisonleao/gruvbox.nvim'

" Plug 'sainnhe/gruvbox-material'
Plug 'tomtom/tcomment_vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/vim-fnr'         " visual find and replace mapped to <leader>R
Plug 'tpope/vim-surround'
" Plug 'unblevable/quick-scope'   " an always-on highlight for a unique character in every word on a line

" Plug 'mhinz/vim-startify'
Plug 'glepnir/dashboard-nvim'

" Plug 'matze/vim-move'
Plug 'junegunn/fzf', {'do': { ->fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'voldikss/vim-floaterm'
" Plug 'junegunn/vim-pseudocl'
" Plug 'junegunn/vim-peekaboo'
" Plug 'junegunn/vim-slash'
Plug 'tpope/vim-fugitive'

Plug 'dense-analysis/ale'

Plug 'hrsh7th/nvim-compe' " WARNING nvim-cmp is new version

Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-lualine/lualine.nvim'

" NOT YET SETUP
Plug 'neovim/nvim-lspconfig'
Plug 'ray-x/lsp_signature.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'phaazon/hop.nvim'
Plug 'nathanmsmith/nvim-ale-diagnostic'

Plug 'williamboman/nvim-lsp-installer'
Plug 'akinsho/bufferline.nvim'

" nnoremap <leader>hw :HopWord<CR>
" nnoremap <leader>l :HopLine<CR>
" Plug 'nvim-telescope/telescope.nvim'
Plug 'psliwka/vim-smoothie'
Plug 'kyazdani42/nvim-tree.lua'

Plug 'EdenEast/nightfox.nvim'
Plug 'rafikdraoui/couleurs.vim'

let g:smoothie_enabled = 1

let g:dashboard_default_executive = 'fzf'
" vimux
" nvim tree
" NeoVim LSP
"
call plug#end()

" status line
source ~/.config/nvim/sources/airline.vim

" Completion
source ~/.config/nvim/sources/compe.vim


" ALE
source ~/.config/nvim/sources/ale.vim

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

colorscheme couleurs " make sure to set colorscheme before LSP settings for full lsp colours

lua require('signature')
lua require('gitsignsconfig')
lua require('lualine-config')
lua require('bufferline-config')
lua require('lsp-config')

lua << EOF

require("nvim-ale-diagnostic")
-- require'nvim-tree'.setup {} -- slow saving

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = false,
    virtual_text = true,
    signs = true,
    update_in_insert = false,
  }
)
EOF

" TODO
" setup nvim-lspconfig debugging
" investigate treesitter
