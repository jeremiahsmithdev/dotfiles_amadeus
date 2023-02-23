lua require('init')

" clang-format command
function! s:JbzClangFormat(first, last)
  let l:winview = winsaveview()
  execute a:first . "," . a:last . "!clang-format"
  call winrestview(l:winview)
endfunction

command! -range=% Format call <sid>JbzClangFormat (<line1>, <line2>)
command! -range=% Clang call <sid>JbzClangFormat (<line1>, <line2>)

" FOLD RULES
setlocal foldmethod=marker
" setlocal foldmarker={{{,}}} " default
" setlocal foldmarker=START,END " default


" set foldmethod=expr
" setlocal foldexpr=GetPotionFold(v:lnum)
"
" function! GetPotionFold(lnum)
"     " if getline(a:lnum) == 'BLOCK'
"     "     return '0'
"     " endif
"     " if getline(a:lnum) != 'BLOCK'
"     "     return '1'
"     " endif
"     if getline(a:lnum) == 'BLOCK'
"         return '1'
"     endif
"
"     return '0'
" endfunction
