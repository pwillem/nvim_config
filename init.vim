call plug#begin()

"Plug 'altercation/vim-colors-solarized'
Plug 'benekastah/neomake'
"Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mfukar/robotframework-vim'
Plug 'jnurmine/Zenburn'

call plug#end()

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

syntax on
filetype plugin indent on
set number
set cursorline
set showcmd

set wildmode=longest,list,full
set wildmenu

"set background=light
"colorscheme solarized
"let g:zenburn_high_Contrast=1
colorscheme zenburn

autocmd Filetype c setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype py 
    \ setlocal tabstop=4
    \ setlocal softtabstop=4
    \ setlocal shiftwidth=4
    \ setlocal textwidth=79
    \ setlocal expandtab
    \ setlocal autoindent
    \ setlocal fileformat=unix

syntax enable

set ignorecase
set backspace=indent,eol,start

set ruler

set scrolloff=2
set sidescrolloff=10

set colorcolumn=80,100

set fileformat=dos

:highlight NeomakeError cterm=underline ctermfg=167 ctermbg=236 gui=undercurl guifg=#e37170 guibg=#3d3535
let g:neomake_error_sign = {
\ 'text': 'X',
\ 'texthl': 'Error',
\ }

autocmd! BufWritePost * Neomake

let g:deoplete#enable_at_startup = 1
let deoplete#tag#cache_limit_size = 500000000
let g:deoplete#sources = {} 
let g:deoplete#sources.c = ['buffer', 'tag']

"autocmd WinEnter term://* startinsert

tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

