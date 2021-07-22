if has('win32')
	set backupdir=~/vimfiles/temp//,.
	set directory=~/vimfiles/temp//,.
	set undodir=~/vimfiles/temp//,.
	let $PLUGDIR="~/vimfiles/plugged"
else
	set backupdir=~/.vim/temp//,.
	set directory=~/.vim/temp//,.
	set undodir=~/.vim/temp//,.
	let $PLUGDIR="~/.vim/plugged"
endif

set enc=utf-8
set termencoding=utf-8
set nocompatible

call plug#begin($PLUGDIR)
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
call plug#end()

syntax enable
filetype indent on
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set colorcolumn=100

set number
set showcmd
set cursorline
set lazyredraw
set showmatch
set backspace=2

set incsearch
set hlsearch

inoremap jk <esc>
inoremap JK <esc>

let mapleader=","

nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

nnoremap <leader><leader> :nohl<CR>

autocmd FileType javascript set shiftwidth=2 tabstop=2
autocmd FileType c set shiftwidth=4 tabstop=4
autocmd FileType cpp set shiftwidth=4 tabstop=4

highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
autocmd BufWinEnter * set visualbell t_vb=

if has('gui_running')
	set guioptions-=m
	set guioptions-=T
	set guioptions-=r
	set guioptions-=L
	let g:gruvbox_italic=1
	colorscheme gruvbox
	if has('gui_win32')
		set guifont=Source_Code_Pro:h10:cANSI
	else
	endif
endif
