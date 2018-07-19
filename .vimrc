" vim-plug
call plug#begin('~/.vim/plug')

" Plug 'godlygeek/tabular'
Plug 'ajh17/VimCompletesMe'
" Plug 'craigemery/vim-autotag'
" Plug 'kien/ctrlp.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-surround'
Plug 'unblevable/quick-scope'

Plug 'NLKNguyen/c-syntax.vim'
" Plug 'Raimondi/delimitMate'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'hdima/python-syntax'

Plug 'dracula/vim'
" Plug 'itchyny/lightline.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Editor tweaks
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
set laststatus=2

nnoremap <silent> <c-l> <c-w>l
nnoremap <silent> <c-h> <c-w>h
nnoremap <silent> <c-k> <c-w>k
nnoremap <silent> <c-j> <c-w>j

" set tags=tags;/

syntax on

" Visuals
set t_Co=256
let g:dracula_colorterm=0
colorscheme dracula

" Backups
set undofile
set backup
set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" ensure file format is unix
set fileformat=unix
set fileformats=unix,dos

" fix markdown editing
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'c']
let g:markdown_syntax_conceal = 0

let g:markdown_minlines = 100

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

set statusline=
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%5*\ %{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor

" plugins

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|o)$'
  \ }
let g:ctrlp_extensions = ['tag']

" let g:autotagTagsFile="tags"

let delimitMate_expand_cr=1
let python_highlight_all = 1

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_max_chars=200
