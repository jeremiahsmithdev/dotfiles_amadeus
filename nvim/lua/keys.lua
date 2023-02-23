bind = require('binds')

bind('n', ';', ':', 'noremap')
bind('v', ';', ':', 'noremap')

-- FZF
-- bind('n', '<C-g>', ':GFiles<CR>', 'noremap')-- nnoremap <silent> <C-f> :GFiles<return>
-- bind('n', '<C-f>', ':Files<CR>', 'noremap')--remaps forwards but I use <C-d> and <C-b> more anyway

-- Telescope
bind('n', '<C-f>', ':Telescope find_files<CR>', 'noremap')
bind('n', '<C-g>', ':Telescope live_grep<CR>', 'noremap')
bind('n', '<C-t>', '<cmd>Telescope help_tags<cr>', 'noremap')

-- Float Term
bind('n', '<leader>F', ':FloatermToggle<CR>', 'noremap')-- nnoremap <leader>F :FloatermNew!<CR>

-- Ale
bind('n', '<leader>e', ':ALENext<CR>', 'noremap')-- nnoremap <leader>e :ALENext<CR>
bind('n', '<leader>E', ':ALEPrevious<CR>', 'noremap')-- nnoremap <leader>E :ALEPrevious<CR>
bind('n', '<leader>t', ':NvimTreeToggle<CR>', 'noremap')-- nnoremap <leader>t :NvimTreeToggle<CR>
bind('n', 'Q', ':q!', 'noremap')

-- indentation jumping
-- bind("n", "[i", :call search('^'. matchstr(getline('.'), '\(^\s*\)') .'\%<' . line('.') . 'l\S', 'be')<CR>, "noremap")

-- Lightspeed
bind('n', 'f', '<Plug>Lightspeed_s')
bind('n', 'F', '<Plug>Lightspeed_S')
bind('v', 'f', '<Plug>Lightspeed_s')
bind('v', 'F', '<Plug>Lightspeed_S')

-- Leap
bind('n', 'f', '<Plug>(leap-forward)')
bind('n', 'F', '<Plug>(leap-backward)')
bind('v', 'f', '<Plug>(leap-forward)')
bind('v', 'F', '<Plug>(leap-backward)')

-- lsp mappings
-- bind('c', 'black', 'lua vim.lsp.buf.formatting()', 'noremap')

-- vim.api.nvim_create_user_command('Log', 'log -c Simplify', { nargs = 0})
-- vim.api.nvim_create_user_command('Upper', 'echo toupper(<q-args>)', { nargs = 1 }) -- e.g. -> Upper hello world > HELLO WORLD
vim.api.nvim_create_user_command('Black', 'lua vim.lsp.buf.range_formatting()', { nargs = 0 })
-- bind('c', 'Block', '<esc>/"<return>i\\n{{{{{{<esc>Na}}}}}}\\n<esc>', 'noremap')
vim.api.nvim_create_user_command('Onl', 'e /remote/tmp/users_workplace/jesmith/codebase/onload_engine/install/com/log/ONL_ONL_otf_be_link', { nargs = 0})
-- bind('c', 'onl', 'e /remote/tmp/users_workplace/jesmith/codebase/onload_engine/install/com/log/ONL_ONL_otf_be_link<CR>', 'noremap')
vim.api.nvim_create_user_command('Log', "e %.log", {})
vim.api.nvim_create_user_command('RemoveM', ":%s/\r//g", {})
vim.api.nvim_create_user_command('New', 'echo expand("%")', {})
vim.api.nvim_create_user_command('Path', ":echo expand('%:p')", { nargs = 0 })
vim.api.nvim_create_user_command('M', ':%s/\r//g', {})
vim.api.nvim_create_user_command('Simplify', 'g!/actionType\\|firstName\\|lastName\\|bookedCabin\\|travelCabin\\|proposedCabin\\|excludeConfirmedDowngrade\\|blocks/d', { nargs = 0 })
vim.api.nvim_create_user_command('Pro', '%s/\\\\n/\\r/g', {})
vim.api.nvim_create_user_command('R', 'e /remote/tmp/users_workplace/jesmith/codebase/onload_engine/install/com/log/ONL_ONL_otf_be_link' , {})
-- bind('c', 'log', 'e %.log', 'noremap')

-- Custom
-- bind('n', ':payload', ':
bind('c', 'payload<CR>', ':%s/\\\\n/\\r/g<CR>', 'noremap')
-- bind('c', 'payload', ':%s/\\n/\r/g', 'noremap')
-- bind('n', ':%s/{/\\{/g<CR>:%s/}/\\}/g<CR>:%s/{/\\[/g<CR>:%s/}/\\]/g<CR>:%s/:/\\:/g<CR>', 'noremap')
bind('c', 'clean', '%s/.*INFO //g<CR>:%s/.*DBG //g<CR>', 'noremap')
bind('c', 'src', 'source ~/.config/nvim/init.vim', 'noremap')-- cnoremap src source ~/.config/nvim/init.vim
bind('c', 'init.vim', 'source ~/.config/nvim/init.lua', 'noremap')-- cnoremap init.vim source ~/.config/nvim/init.vim
bind('c', 'init.lua', ':Files<CR>', 'noremap')-- nnoremap <leader>f :Files<return>
-- bind('c', 'lg', ':FloatermToggle<CR> lg<CR>', 'noremap')-- nnoremap <leader>F :FloatermNew!<CR>
-- bind('c', 'payload<CR>', ':%s/\\\\n/\\r/g<CR>', 'noremap')
bind('c', 'remove<CR>', ':%s/\\\\//g<CR>', 'noremap')
bind('c', 'curly<CR>', ':%s/{/\\\\{/g<CR>:%s/}/\\\\}/g<CR>', 'noremap')
bind('c', 'square<CR>',':%s/\\[/\\\\[/g<CR>:%s/]/\\\\]/g<CR>', 'noremap')
bind('c', 'colon<CR>', ':%s/:/\\\\:/g<CR>', 'noremap')
bind('c', 'and<CR>', ':%s/$/\\&/g<CR>', 'noremap')
bind('c', 'json_format<CR>', ':payload<CR>:remove<CR>:curly<CR>:square<CR>:colon<CR>:and<CR>')
bind('c', 'remove_and<CR>', ':%s/&//g<CR>', 'noremap')
bind('c', 'add_to_end<CR>', "<esc>GA'''<esc>", 'noremap')
bind('c', 'expected_json<CR>', '<esc><C-v>lGd:remove<CR>:remove_and<CR>:add_to_end<CR>')
bind('c', 'refresh<CR>', 'bd!<CR>:e /remote/tmp/users_workplace/jesmith/codebase/onload_engine/install/com/log/ONL_ONL_otf_be_link<CR>:!cd /remote/tmp/users_workplace/jesmith/codebase/onload_engine/install/com/log<CR>dGG:w<CR>', 'noremap')
bind('c', 'removeM', ':%s/\r//g', 'noremap')
-- bind('c', 'restart', 'q!<CR>hi', 'noremap')
bind('c', 'newlg', ':refresh<CR>dGG:w', 'noremap')
-- bind('c', 'grok', "<esc>O# https://opengrok.cicd.rnd.amadeus.net/xref/ONLE/onload_engine/<C-r>%#<esc>:put=line('.')<CR>kJx", 'noremap')
bind('c', 'grok', 'echom "https://opengrok.cicd.rnd.amadeus.net/xref/ONLE/onload_engine/<C-R>%#".line(\'.\')<CR>', 'noremap')
bind('c', 'srk', 'source ~/.config/nvim/lua/keys.lua')
bind('c', 'explorer', "echom substitute('\\\\iis.amadeus.net\\nfs\\_syd\\'.expand('%:p')[8:], '/', '\\', 'g')", 'noremap')


-- bind('c', 'payload', ':%s/\\\\n/\\r/g<CR>:%s/{/\\{/g<CR>:%s/}/\\}/g<CR>:%s/{/\\[/g<CR>:%s/}/\\]/g<CR>:%s/:/\\:/g<CR>', 'noremap')
-- "012-0738-32"],[ "4", "Beacon

-- vim.cmd [[command -nargs=1 Rename execute "!mv % " '<args>']]
-- vim.api.nvim_set_keymap('c', 'tree', 'NvimTreeToggle', {noremap = true, silent = true})-- cnoremap tree NvimTreeToggle
--
--

-- smoothie
-- bind('n', 'gg', '<cmd>call smoothie#cursor_movement("gg")<CR>', 'noremap')
--

--vim-ccls mappings
bind('n', '<leader>,cc', ':CclsCallers<cr>', 'noremap')
bind('n', '<leader>,cC', ':CclsCallees<cr>', 'noremap')
bind('n', '<leader>,bb', ':CclsBaseHierarchy<cr>', 'noremap')
bind('n', '<leader>,dd', ':CclsDerivedHierarchy<cr>', 'noremap')
bind('n', '<leader>,mm', ':CclsMemberHierarchy<cr>', 'noremap')

bind('n', '<leader>,ch', ':CclsCallHierarchy<cr>', 'noremap')
bind('n', '<leader>,cH', ':CclsCalleeHierarchy<cr>', 'noremap')
bind('n', '<leader>,bh', ':CclsBaseHierarchy<cr>', 'noremap')
bind('n', '<leader>,dh', ':CclsDerivedHierarchy<cr>', 'noremap')
bind('n', '<leader>,mh', ':CclsMemberHierarchy<cr>', 'noremap')
-- CclsBase: Get a list of base classes for the symbol under the cursor.
-- CclsBaseHierarchy: Get a tree of inheritance ancestors for the symbol under cursor.
-- CclsDerived: Get a list of derived classes for the symbol under the cursor.
-- CclsDerivedHierarchy: Get a tree of inheritance descendants for the symbol under cursor.
-- CclsCallers: Get a list of functions calling the function under the cursor.
-- CclsCallHierarchy: Get a hierarchy of functions calling the function under the cursor.
-- CclsCallees: Get a list of functions called by the function under the cursor.
-- CclsCalleeHierahy: Get a hierarchy of functions called by the function under the cursor.
-- CclsMembers/CclsMemberFunctions/CclsMemberTypes: Get a lists of members for the symbol under cursor.
-- CclsMemberHierarchy/CclsMemberFunctionHierarchy/CclsMemberTypeHierarchy: Get a tree of members for the symbol under cursor.
-- CclsVars: Get a list of document variables.

vim.cmd[[

 let g:dashboard_custom_shortcut={
 \ 'last_session'       : 'SPC s l',
 \ 'find_history'       : 'SPC h',
 \ 'find_file'          : 'SPC f',
 \ 'new_file'           : 'SPC n',
 \ 'change_colorscheme' : 'SPC c',
 \ 'find_word'          : 'SPC w',
 \ 'book_marks'         : 'SPC b',
 \ }
]]

bind('n', '<leader>ss', '<:C-u>SessionSave<CR>', 'noremap')
bind('n', '<leader>sl', ':<C-u>SessionLoad<CR>', 'noremap')

bind('n', '<leader>h', ':Hist<CR>', 'noremap')
-- bind('n', '<leader>f', ':Files<CR>', 'noremap')-- nnoremap <leader>f :Files<return> -- used by lsp formatting command
-- bind('n', '<leader>n', ':new<CR>', 'noremap')
bind('n', '<leader>w', ':Rg<CR>', 'noremap')
bind('n', '<leader>b', ':Marks<CR>', 'noremap')
bind('n', '<leader>c', ':Colors<CR>', 'noremap')

-- buffer navigation
bind('n', '<C-n>', ':bn<CR>', 'noremap')-- nmap <C-n> :bn<CR> " Next buffer
bind('n', '<C-p>', ':bp<CR>', 'noremap')-- nmap <C-p> :bp<CR> " previous buffer
bind('n', '<C-#>', ':b#<CR>', 'noremap')-- nmap <C-#> :b#<CR> " previous buffer you were in
bind('n', '<C-3>', ':b#<CR>', 'noremap')-- nmap <C-3> :b#<CR> " ditto

vim.cmd('source ~/.config/nvim/commands.vim')

