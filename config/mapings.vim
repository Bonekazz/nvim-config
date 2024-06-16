" SMOOTH SCROLL
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 40, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 40, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 40, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 40, 4)<CR>


:nnoremap <Tab> :Oil<CR> 

:nnoremap <C-w>h :leftabove vsplit<CR>
:nnoremap <C-w>l :vsplit<CR>
:nnoremap <C-w>k :aboveleft split<CR>
:nnoremap <C-w>j :belowright split<CR>

:nnoremap <C-h> :wincmd h<CR>
:nnoremap <C-k> :wincmd k<CR>
:nnoremap <C-l> :wincmd l<CR>
:nnoremap <C-j> :wincmd j<CR>


" WINDOW RESIZING
:noremap <M-j> <C-w>-
:noremap <M-k> <C-w>+
:noremap <M-h> <C-w>>
:noremap <M-l> <C-w><

" TERMINAL
:nnoremap t :terminal<CR>
:tnoremap <Esc> <C-\><C-n>

:nnoremap <C-S-CR> <o><Esc><O><Esc>
