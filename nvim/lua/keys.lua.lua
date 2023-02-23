bind = require('binds')

-- easy buffer switching (crlt+direction to switch buffer)
bind('n', '<C-J>', '<C-W><C-J>', 'noremap')
bind('n', '<C-K>', '<C-W><C-K>', 'noremap')
bind('n', '<C-L>', '<C-W><C-L>', 'noremap')
bind('n', '<C-H>', '<C-W><C-H>', 'noremap')

bind('n', ';', ':', 'noremap')

-- use jk for escape
bind('i', 'jk', '<ESC>', 'noremap')
-- <ESC> for escaping terminal mode
bind('t', '<ESC>', '<C-\\><C-n>', 'noremap')
-- to actually insert the escape key
bind('t', '<C-v><Esc>', '<Esc>', 'noremap')

-- <leader>w for update
bind('n', '<leader>w', function() vim.cmd('update') end, 'cmd')

bind('c', 'src', 'source ~/.config/nvim/lua/init.lua')

---------------------------------------------------------
--

vim.api.nvim_set_keymap('n', '<leader>f', ':Files<CR>', {noremap = true, silent = true})-- nnoremap <leader>f :Files<return>
vim.api.nvim_set_keymap('n', '<C-f>', ':GFiles<CR>', {noremap = true, silent = true})-- nnoremap <silent> <C-f> :GFiles<return>
vim.api.nvim_set_keymap('n', '<leader>F', ':FloatermToggle<CR>', {noremap = true, silent = true})-- nnoremap <leader>F :FloatermNew!<CR>
vim.api.nvim_set_keymap('n', '<leader>e', ':ALENext<CR>', {noremap = true, silent = true})-- nnoremap <leader>e :ALENext<CR>
vim.api.nvim_set_keymap('n', '<leader>E', ':ALEPrevious<CR>', {noremap = true, silent = true})-- nnoremap <leader>E :ALEPrevious<CR>
vim.api.nvim_set_keymap('n', '<leader>t', ':NvimToggle<CR>', {noremap = true, silent = true})-- nnoremap <leader>t :NvimTreeToggle<CR>

-- vim.api.nvim_set_keymap('c', 'src', 'source ~/.config/nvim/init.lua', {noremap = true, silent = true})-- cnoremap src source ~/.config/nvim/init.vim
-- vim.api.nvim_set_keymap('c', 'init.vim', 'source ~/.config/nvim/init.lua', {noremap = true, silent = true})-- cnoremap init.vim source ~/.config/nvim/init.vim
-- vim.api.nvim_set_keymap('c', 'init.lua', ':Files<CR>', {noremap = true, silent = true})-- nnoremap <leader>f :Files<return>
-- vim.api.nvim_set_keymap('c', 'tree', 'NvimTreeToggle', {noremap = true, silent = true})-- cnoremap tree NvimTreeToggle

vim.api.nvim_set_keymap('n', '<C-n>', ':bn<CR>', {noremap = true, silent = true})-- nmap <C-n> :bn<CR> " Next buffer
vim.api.nvim_set_keymap('n', '<C-p>', ':bp<CR>', {noremap = true, silent = true})-- nmap <C-p> :bp<CR> " previous buffer
vim.api.nvim_set_keymap('n', '<C-#>', ':b#<CR>', {noremap = true, silent = true})-- nmap <C-#> :b#<CR> " previous buffer you were in
vim.api.nvim_set_keymap('n', '<C-3>', ':b#<CR>', {noremap = true, silent = true})-- nmap <C-3> :b#<CR> " ditto
-- vim.api.nvim_set_keymap('n', ';', ':', {noremap = true, silent = true})-- nmap ; :


-------------------------------

vim.g.dashboard_default_executive = 'fzf'
bind('n', '<leader>ss', '<:C-u>SessionSave<CR>', 'noremap')
bind('n', '<leader>sl', ':<C-u>SessionLoad<CR>', 'noremap')

-- ggdashboard_custom_shortcut={
-- \ 'last_session'       : 'SPC s l',
-- \ 'find_history'       : 'SPC h',
-- \ 'find_file'          : 'SPC f',
-- \ 'new_file'           : 'SPC n',
-- \ 'change_colorscheme' : 'SPC c',
-- \ 'find_word'          : 'SPC w',
-- \ 'book_marks'         : 'SPC b',
-- \ 'Git Files'          : 'SPC g',
-- \ }
