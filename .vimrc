" Plugins, vim-plug
call plug#begin('~/.vim/bundle')
  Plug 'scrooloose/nerdtree'
  Plug 'jeetsukumaran/vim-buffergator'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'vim-syntastic/syntastic'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-obsession'
  Plug 'airblade/vim-gitgutter'
  Plug 'jgdavey/vim-blockle'
  Plug 'pangloss/vim-javascript'
  Plug 'slim-template/vim-slim'
  Plug 'hail2u/vim-css3-syntax'
  Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox
set background=dark

" Leader
let mapleader = ","

scriptencoding utf-8
set fileencoding=utf-8
set termencoding=utf-8
set encoding=utf-8
set number
set cc=100
highlight ColorColumn ctermbg=8
set list
set hlsearch
set ignorecase
set smartcase
set autoindent
set backspace=indent,eol,start
"set backspace=2   " Backspace deletes like most programs in insert mode

" Softtabs, 2 spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set ts=2 sts=2 sw=2
set shiftround
set expandtab

set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set hls

map <Leader>u orequire 'pp'; require 'pry'; Kernel.binding.pry<C-[>
map <Leader>r orequire 'pp'; require 'byebug'; byebug<C-[>

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Allow to copy/paste between VIM instances
" "copy the current visual selection to ~/.vbuf
vmap <Leader>y :w! ~/.vbuf<CR>
" "copy the current line to the buffer file if no visual selection
nmap <Leader>y :.w! ~/.vbuf<CR>
" "paste the contents of the buffer file
nmap <Leader>p :r ~/.vbuf<CR>
"fzf
nmap <Leader>f :FZF<ENTER>
nmap <Leader>a :Ag<Space>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
nnoremap <silent> <bs> <C-w><Left>

"================vim-slim===================
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
"================Syntastic==================
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
