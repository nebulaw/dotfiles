
filetype indent on
filetype on
filetype plugin on

syntax on

let mapleader=" "
let localmapleader=" "

" Batman Theme :)
colorscheme paramount

set autoindent
set autowrite
set background=dark
set backspace=indent,eol,start
set backup
set backupext=.bcup
set breakindent
set clipboard=unnamedplus 
set cul
set display=truncate
set expandtab
" retab converts tabs to spaces, I like this way
    %retab
set encoding=utf-8
set fenc=utf-8
set formatoptions-=t        " autowrap
set formatoptions+=r        " insert space after enter
set formatoptions+=o        " insert space after o, O
set formatoptions+=c        " autowrap comments
set formatoptions+=b        " autowraps only if blank is inserted
set history=2000            " I like history that much
set hlsearch                " highlighting search results, useful tho
set icon
set ignorecase              " ignoring case while searching
set incsearch               " highlight while typing
set lazyredraw
set linebreak
set list                    " shows tab or trail characters
set listchars=tab:··,trail:· " my chars
set mouse=a                 " could be
set number                  " numbers are useful
set noequalalways           " while splitted screen, opening new window wont resize other windows
set noerrorbells            " annoying noises
set noscrollbind
set novisualbell            " no bells
set ruler                   " cursor coordinates
set relativenumber          " I like this btw
set scroll=5                " set CTRL-{U,D} scroll lines
set smoothscroll            " smooth scroll
set shell=fish              " Fish is cool
set showcmd                 " cmd window down
set showmatch
set showmode
set shiftwidth=2
set smarttab
set smartcase
set softtabstop=4
set scrolloff=12
set tabstop=2
set termguicolors
set title
set ttimeout
set ttimeoutlen=200
set wfw
set whichwrap+=<,>,h,l      " Works like a word processor
set wildmenu
set wildmode=list:longest
set window=24               " CTRL-{F,B} scroll
set undofile
set undodir=~/.vim-undo
set undolevels=2000

" this move cursor to the last position, very helpful,
" annoyning while sourcing .vimrc
" let line_num = line("'\"")
" if line_num > 2 && line_num <= line("$")
"   execute "normal! g'\""
" endif

" KEYMAPS
" putting parentheses/curly braces around a word
nnoremap \p i(<ESC>ea)<ESC>
nnoremap \c i{<ESC>ea}<ESC>
nnoremap \b i[<ESC>ea]<ESC>
" Exit to Normal Mode, l is used for not changing the cursor pos
inoremap jk <ESC>l
" move around windows
nnoremap <C-K> :wincmd k<CR>
nnoremap <C-J> :wincmd j<CR>
nnoremap <C-H> :wincmd h<CR>
nnoremap <C-L> :wincmd l<CR>
" tab managment
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>
nnoremap <TAB> :tabnext<CR>
" Save file
nnoremap <C-S> :w!<CR>
" clear highlights
nnoremap <LEADER>h :noh<CR>
" select all
nnoremap <C-A> gg<S-V>G
" Save File in insert mode
inoremap <C-S> <ESC>:w!<CR>
" funny way to increment numbers in normal mode
nnoremap + <C-a>
nnoremap - <C-x>
nnoremap <LEADER>c :ColorToggle<CR>
" Normal Mode in Terminal, I dont know if I use it but whatever
tnoremap <ESC> <C-W>N
" delete the word cursor standing on, do not stand at the end
nnoremap dw e<C-V>bdx
" yank/paste, like a stolen math
xnoremap y y:call system("wl-copy", @")<CR>
nnoremap p :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<CR>p

" Helpful plugins, no bloat
call plug#begin()
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  Plug 'chrisbra/Colorizer'
call plug#end()


" Fixing My Tiping mistakes, abbreviations!
iabbrev teh the
iabbrev KT Karlo Tsutskiridze
iabbrev IMN Nebula


