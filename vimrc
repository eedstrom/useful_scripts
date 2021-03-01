syntax on
filetype plugin on
filetype indent on
let g:tex_flavor='latex'
set number
packadd! dracula
colorscheme dracula
map <C-n> <Esc>:NERDTreeToggle<CR>
:imap jj <Esc>
autocmd FileType tex setlocal spell spelllang=en_us
