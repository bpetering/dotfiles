set encoding=utf8

syntax enable

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Don't expand tab for Makefiles
autocmd FileType make set noexpandtab


" Auto indent and smart indent
set ai
set si

set number
set showcmd
set cursorline

filetype indent on

set lazyredraw
set showmatch

" Ignore case when searching
set ignorecase
" Highlight search results
set hlsearch

" Show current pos
set ruler
" Height of command bar
set cmdheight=2

" Only redraw screen when needed
set lazyredraw

" don't prompt save 
set hidden

" folding
set foldmethod=indent

" expand when opening
set foldlevelstart=99

" https://thevaluable.dev/vim-php-ide/
call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'nelsyeung/twig.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'ncm2/ncm2'
Plug 'phpactor/phpactor'
Plug 'phpactor/ncm2-phpactor'
Plug 'https://github.com/junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neomake/neomake'
Plug 'adoy/vim-php-refactoring-toolbox'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'othree/html5.vim'

Plug 'mattn/emmet-vim'
call plug#end()

let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_install_global = 0
autocmd FileType html,css,jinja EmmetInstall

nmap <F8> :TagbarToggle<CR>

