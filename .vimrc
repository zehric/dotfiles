" vim-plug
call plug#begin('$USERPROFILE/vimfiles/plug')

Plug 'bluz71/vim-moonfly-colors'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript'
Plug 'hdima/python-syntax'
Plug 'NLKNguyen/c-syntax.vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'vim-latex/vim-latex'

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
set colorcolumn=101
set lines=65
set scrolloff=3
set columns=110
set guioptions-=T
filetype indent plugin on
set nocompatible
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

syntax on

" Windows keystrokes
source $VIMRUNTIME/mswin.vim

" Visuals
" Comment out font if not on Windows
if has('gui_running')
    set guifont=Consolas:h11
endif
colorscheme moonfly

" Backups
set undofile
set backup
" Windows
set dir=%USERPROFILE%\\vimfiles\\swap//,.,C:\\tmp,C:\\temp
set backupdir=%USERPROFILE%\\vimfiles\\backup//,.,C:\\tmp,C:\\temp            
set undodir=%USERPROFILE%\\vimfiles\\undo//,.,C:\\tmp,C:\\temp

" Linux
" set undodir=~/.vim/undo//
" set backupdir=~/.vim/backup//
" set directory=~/.vim/swp//

" ensure file format is unix
set fileformat=unix
set fileformats=unix,dos

" Plugins
let delimitMate_expand_cr=1

let g:tex_flavor='latex'
