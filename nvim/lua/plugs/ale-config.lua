vim.g.ale_sign_error = '✘'
vim.g.ale_sign_warning = '⚠'
-- highlight ALEErrorSign ctermbg=NONE ctermfg=red
-- highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

-- " let g:ale_set_balloons=1
-- " let g:ale_float_preview = 1 " does nothing?
-- " let g:ale_cursor_detail = 1
-- " let g:ale_hover_to_floating_preview=1

vim.g.ale_set_balloons=1
vim.g.ale_float_preview=1
vim.g.ale_hover_to_preview=1
vim.g.ale_lint_on_enter = 1
-- " let g:ale_virtualtext_cursor=1
--
-- vim.g.ale_python_flake8_options = --max-line-length=120'
vim.g.ale_python_flake8_options = '--max-line-length=120'

-- augroup ale_hover_cursor
--   autocmd!
--   autocmd CursorHold * ALEHover
-- augroup END

-- " LINTERS
-- vim.g.ale_linters = ('python': ['flake8'], 'cpp' : ['cc']) --" should use jedi bc using jedi_language_server?
-- let g:ale_linters = {'python': ['flake8']}
-- vim.g.ale_fixers = {'*':[], 'python':['autoflake', 'add_blank_lines_for_python_control_statements', 'autoimport',
-- 'reorder-python-imports']}
-- EOF
