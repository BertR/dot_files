set nocompatible

call plug#begin()

"Utility plugins
Plug 'tpope/vim-sensible'
Plug 'majutsushi/tagbar'

"AutoCompletion
Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }

"Python or Django Specific
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'Glench/Vim-Jinja2-Syntax'

"Node or Javascript specific
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'marijnh/tern_for_vim', { 'do': './npm install' }
Plug 'ahayman/vim-nodejs-complete'


"HTML & CSS
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }

"Linting
Plug 'w0rp/ale'

"Look & feel

Plug 'bling/vim-airline'
let g:airline_powerline_fonts = 1 "Enable the special characters
let g:airline#extensions#tabline#enabled = 1 "Enable list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' "Show just the filename


"LazyLoading

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }


call plug#end()

syntax on
filetype plugin indent on

set textwidth=79  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
set ruler         " Always show current position
set virtualedit=onemore " Allow for cursor beyond last character
set backspace=eol,start,indent " Configure backspace so it acts as it should act
set showmatch     " Show matching brackets when text indicator is over them

" Searching
" --------------------------------------------------------------------
set hlsearch " Highlight searches
set incsearch " Highlight search results instantly
set ignorecase " Ignore case
set smartcase " Override 'ignorecase' option if the search contains upper  case characters.

" Set up shortcut
" ------------------------------------------------
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>
set pastetoggle=<F3>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Turn backup off, since most stuff is in SVN, git et.c anyway...
set nowritebackup
set noswapfile
" " Persistent undo
set undofile
set undodir=~/.vim/tmp/undodir


" use special powerline font
"python powerline_setup()
"python del powerline_setup
"set guifont=Inconsolata\ for\ Powerline:h14
"let g:Powerline_symbols = 'fancy'
"set encoding=utf-8
"set t_Co=256
"set fillchars+=stl:\ ,stlnc:\
"set term=xterm-256color