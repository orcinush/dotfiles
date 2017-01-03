""" Plugins
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'deton/jasegment.vim'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle', 'for': 'go' }
Plug 'scrooloose/syntastic'
Plug 'tomasr/molokai'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe', {
      \ 'do': './install.py --clang-completer --tern-completer' }
call plug#end()

""" Edit
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set backspace=indent,eol,start
set encoding=utf-8

""" UI
set laststatus=2
set number
set ruler
set showcmd
set showmatch
set wildmenu

""" Search
set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan

""" Files
set dir=~/Library/Caches/vim/swp
set backup
set backupdir=~/Library/Caches/vim/backup
set undofile
set undodir=~/Library/Caches/vim/undo

""" Filetype recognition
let g:tex_flavor = 'latex'

""" CtrlP
let g:ctrlp_working_path_mode = 'ra'

""" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

""" YouCompleteMe
let g:ycm_key_invoke_completion = ''
let g:ycm_key_list_select_completion = []
let g:ycm_key_list_previous_completion = []
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
