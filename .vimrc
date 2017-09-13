
" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
""

syntax on
set background=dark
"set smartindent
set autoindent
set cindent
"set smarttab
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
" indent/outdent to nearest tabstops
set shiftround

set ic " ignore case in search
set incsearch " incremental search
set hlsearch " highlight search results
set smartcase " ignore case when lowercase
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
" Turn of highlighting after a search
"map ,, :nohl

" always have some lines of text when scrolling
set scrolloff=8

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins


set nocompatible    " Use Vim defaults (much better!)
set bs=indent,eol,start     " allow backspacing over everything in insert mode
"set ai         " always set autoindenting on
"set backup     " keep a backup file
set viminfo='20,\"50    " read/write a .viminfo file, don't store more
            " than 50 lines of registers
set history=50      " keep 50 lines of command line history
set ruler       " show the cursor position all the time
set number        " yes linenumbers
hi LineNr       term=bold cterm=bold ctermfg=2 guifg=Grey guibg=Grey90
set nohls       " don't highlight everything when searching

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " In text files, always limit the width of text to 78 characters
  autocmd BufRead *.txt set tw=78
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif
