" vim-paramotion — a global plugin that allows the { and } paragraph motions
" to move to lines that only contain whitespace, not just completely empty
" lines.
" Version: 1.0.0 (2021-03-05)
" URL:     https://github.com/cwfoo/vim-paramotion
" License: This file is licensed under the BSD Zero Clause License (0BSD).

if exists('g:loaded_paramotion')
    finish
endif
let g:loaded_paramotion = 1

function! s:paragraph_move(direction, count)
    normal! m'

    let i = 0
    if a:direction > 0
        " Forward paragraph motion.
        normal! 0
        while i < a:count
            " First whitespace-only line below a line that contains
            " non-whitespace characters.
            if search('\m\S', 'W') == 0 || search('\m^\s*$', 'W') == 0
                call search('\%$', 'W')
                return
            endif
            let i += 1
        endwhile
    elseif a:direction < 0
        " Backward paragraph motion.
        normal! ^
        while i < a:count
            " First whitespace-only line above a line that contains
            " non-whitespace characters.
            if search('\m\S', 'Wbc') == 0 || search('\m^\s*$', 'Wb') == 0
                call cursor(1, 1)
                return
            endif
            let i += 1
        endwhile
    endif
endfunction

function! s:visual_paragraph_move(direction, count)
    normal! gv
    call s:paragraph_move(a:direction, a:count)
endfunction

nnoremap <silent> { :<C-U>call <SID>paragraph_move(-1, v:count1)<CR>
nnoremap <silent> } :<C-U>call <SID>paragraph_move( 1, v:count1)<CR>

onoremap <silent> { :<C-U>call <SID>paragraph_move(-1, v:count1)<CR>
onoremap <silent> } :<C-U>call <SID>paragraph_move( 1, v:count1)<CR>

xnoremap <silent> { :<C-U>call <SID>visual_paragraph_move(-1, v:count1)<CR>
xnoremap <silent> } :<C-U>call <SID>visual_paragraph_move( 1, v:count1)<CR>
