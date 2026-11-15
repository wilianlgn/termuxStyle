" Activar barra de estado
set laststatus=2

" Colores de la barra
highlight User4 ctermfg=2 ctermbg=0
highlight User1 ctermfg=15 ctermbg=2
highlight User2 ctermfg=white ctermbg=blue
highlight User3 ctermfg=white ctermbg=8
highlight user5 ctermfg=8 ctermbg=blue
highlight user6 ctermfg=blue ctermbg=2

" Barra Powerline


set statusline=
set statusline=%#User4#
set statusline+=%=
set statusline+=%#User1#
set statusline+=%{toupper(mode())}\ 
set statusline+=%#user6#
set statusline+=%#User2#
set statusline+=\ %l,%c\ 
set statusline+=%#user5#
set statusline+=%#User3#
set statusline+=\ %t\ 󰈔\ 
set noshowmode
set shortmess+=FW

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

inoremap ( ()<Left>
inoremap [ []<Left>
inoremap ' ''<Left>
inoremap " ""<Left>
inoremap { {<CR>}<Esc>O

let g:user_emmet_mode='a'
let g:user_emmet_install_global=1

imap <expr> <Tab> emmet#expandAbbrIntelligent("\<Tab>")
