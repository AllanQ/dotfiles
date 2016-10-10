"================Pathogen===================
execute pathogen#infect()
filetype plugin indent on
" ================Syntastic==================
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint', 'flow']
let g:syntastic_haml_checkers = ['haml_lint']
let g:syntastic_ruby_checkers = ['rubocop', 'mri']
"===========================================

let mapleader=","
scriptencoding utf-8
set fileencoding=utf-8
set encoding=utf-8
set number
set cc=80
highlight ColorColumn ctermbg=8
set list
set autowrite
set hlsearch
set ignorecase
set smartcase
set autoindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set ts=2 sts=2 sw=2
set backspace=indent,eol,start
set cursorline
set noswapfile
map <Leader>b obinding.pry<C-[>

" Allow to copy/paste between VIM instances
" "copy the current visual selection to ~/.vbuf
vmap <Leader>y :w! ~/.vbuf<CR>
" "copy the current line to the buffer file if no visual selection
nmap <Leader>y :.w! ~/.vbuf<CR>
" "paste the contents of the buffer file
nmap <Leader>p :r ~/.vbuf<CR>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
nnoremap <silent> <bs> <C-w><Left>

