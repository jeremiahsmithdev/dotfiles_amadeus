-- set number
-- set noswapfile
-- vim.opt.mouse = a
vim.opt.swapfile = false


-- " speed things up
-- syntax enable
-- set nocursorline	" highlight current line
vim.opt.lazyredraw = true -- set lazyredraw
vim.opt.synmaxcol = 128-- set synmaxcol=128
-- vim.opt.minlines = 256-- syntax sync minlines=256
vim.g.CSApprox_loaded = 1-- let g:CSApprox_loaded = 1
vim.g.python3_host_prog = 1-- let g:python3_host_prog = 1
-- " set relativenumber


vim.g.mapleader = ' '

vim.opt.hidden = true-- set hidden " allow change buffer without save
vim.opt.clipboard = 'unnamedplus'-- set clipboard=unnamedplus
vim.opt.ruler = true-- set ruler
-- vim.opt.t_Co = 256-- set t_Co=256
-- vim.opt.expnandtab = true-- set expandtab
vim.opt.smartindent = true-- set smartindent
vim.opt.backup = false-- set nobackup
vim.opt.termguicolors = true-- set termguicolors
vim.opt.autochdir = false-- set noautochdir
vim.opt.ts = 4-- set ts=4 sw=4 " tapstop, shiftwidth
vim.opt.sw = 4
vim.scrolloff = 5 -- set scrolloff=5 " lines above / below the cursor
-- " set scrolljump=10

-- " map ^P :Files
vim.api.nvim_set_keymap('n', '<leader>f', ':Files<CR>', {noremap = true, silent = true})-- nnoremap <leader>f :Files<return>
vim.api.nvim_set_keymap('n', '<C-f>', ':GFiles<CR>', {noremap = true, silent = true})-- nnoremap <silent> <C-f> :GFiles<return>
vim.api.nvim_set_keymap('n', '<leader>F', ':FloatermToggle<CR>', {noremap = true, silent = true})-- nnoremap <leader>F :FloatermNew!<CR>
vim.api.nvim_set_keymap('n', '<leader>e', ':ALENext<CR>', {noremap = true, silent = true})-- nnoremap <leader>e :ALENext<CR>
vim.api.nvim_set_keymap('n', '<leader>E', ':ALEPrevious<CR>', {noremap = true, silent = true})-- nnoremap <leader>E :ALEPrevious<CR>
vim.api.nvim_set_keymap('n', '<leader>t', ':NvimToggle<CR>', {noremap = true, silent = true})-- nnoremap <leader>t :NvimTreeToggle<CR>

vim.api.nvim_set_keymap('c', 'src', 'source ~/.config/nvim/init.lua', {noremap = true, silent = true})-- cnoremap src source ~/.config/nvim/init.vim
vim.api.nvim_set_keymap('c', 'init.vim', 'source ~/.config/nvim/init.lua', {noremap = true, silent = true})-- cnoremap init.vim source ~/.config/nvim/init.vim
vim.api.nvim_set_keymap('c', 'init.lua', ':Files<CR>', {noremap = true, silent = true})-- nnoremap <leader>f :Files<return>
-- vim.api.nvim_set_keymap('c', 'tree', 'NvimTreeToggle', {noremap = true, silent = true})-- cnoremap tree NvimTreeToggle

vim.api.nvim_set_keymap('n', '<C-n>', ':bn<CR>', {noremap = true, silent = true})-- nmap <C-n> :bn<CR> " Next buffer
vim.api.nvim_set_keymap('n', '<C-p>', ':bp<CR>', {noremap = true, silent = true})-- nmap <C-p> :bp<CR> " previous buffer
vim.api.nvim_set_keymap('n', '<C-#>', ':b#<CR>', {noremap = true, silent = true})-- nmap <C-#> :b#<CR> " previous buffer you were in
vim.api.nvim_set_keymap('n', '<C-3>', ':b#<CR>', {noremap = true, silent = true})-- nmap <C-3> :b#<CR> " ditto
vim.api.nvim_set_keymap('n', ';', ':', {noremap = true, silent = true})-- nmap ; :
