" vim-plug
call plug#begin('~/.vim/plug')

Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'godlygeek/tabular'
Plug 'craigemery/vim-autotag'
Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-surround'
Plug 'justinmk/vim-sneak'

Plug 'NLKNguyen/c-syntax.vim'
Plug 'Raimondi/delimitMate'
Plug 'tomtom/tcomment_vim'
Plug 'hdima/python-syntax'

Plug 'dracula/vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Editor tweaks
set ruler
set softtabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set smarttab
set cindent
set number
set backspace=indent,eol,start
set autoread
au CursorHold * checktime
set showmode
set incsearch
set wrap linebreak nolist
set hlsearch
set colorcolumn=80
set scrolloff=5
set ignorecase
set smartcase
filetype indent plugin on
set nocompatible

map <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <silent> <c-l> <c-w>l
nnoremap <silent> <c-h> <c-w>h
nnoremap <silent> <c-k> <c-w>k
nnoremap <silent> <c-j> <c-w>j

set tags=tags;/

syntax on

" Visuals
set t_Co=256
colorscheme dracula
set t_ut=

" Backups
set undofile
set backup
set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//

" ensure file format is unix
set fileformat=unix
set fileformats=unix,dos

" fix markdown editing
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'c']
let g:markdown_syntax_conceal = 0
let g:markdown_minlines = 100

" plugins
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|o)$'
  \ }
let g:ctrlp_extensions = ['tag']

let g:autotagTagsFile="tags"

let delimitMate_expand_cr=1
let python_highlight_all = 1

let NERDTreeIgnore = ['\.o$']

let python_highlight_all=1
