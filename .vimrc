" vim-plug
call plug#begin('$USERPROFILE/vimfiles/plug')

Plug 'kristijanhusak/vim-hybrid-material'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript'
Plug 'hdima/python-syntax'
Plug 'NLKNguyen/c-syntax.vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'

call plug#end()

" Editor tweaks
set ruler
set laststatus=2
set softtabstop=4
set expandtab
set shiftwidth=4
set smarttab
set autoindent
set smartindent
set cindent
set paste
set number
set relativenumber
nnoremap <F2> :set rnu!<CR>
set hidden
set backspace=indent,eol,start
set autoread
set showmode
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>
set nowrap
set incsearch
set hlsearch
set ignorecase
set smartcase
set incsearch
let &colorcolumn=join(range(81,999),",")
set lines=65
set scrolloff=3
set columns=90
set guioptions-=T
filetype indent plugin on
set nocompatible
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Set column size to vary with number of windows
autocmd BufWinEnter * let &columns=winnr('$')<2?90:winnr('$')*86-1 | wincmd =
autocmd BufWinLeave * let &columns=winnr('$')-1<2?90:(winnr('$')-1)*86-1 
        \| wincmd =
syntax on

" Windows keystrokes
source $VIMRUNTIME/mswin.vim

" Visuals
" Comment out font if not on Windows
if has('gui_running')
    set guifont=Consolas:h11:cANSI
endif
set background=dark
colorscheme hybrid_reverse
hi colorcolumn guibg=#1A222B

" Backups
set undofile
set backup
" Windows
set dir=C:\\Users\\Eric\\vimfiles\\swap//,.,c:\\tmp,c:\\temp
set backupdir=C:\\Users\\Eric\\vimfiles\\backup//,.,c:\\tmp,c:\\temp
set undodir=C:\\Users\\Eric\\vimfiles\\undo//,.,c:\\tmp,c:\\temp

" Linux
" set undodir=~/.vim/undo//
" set backupdir=~/.vim/backup//
" set directory=~/.vim/swp//

" ensure file format is unix
set fileformat=unix
set fileformats=unix,dos

" Plugins
let delimitMate_expand_cr=1
