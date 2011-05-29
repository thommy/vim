filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nospell


" Set the tabspace width
set ts=4
set sw=4

filetype plugin on
set ofu=syntaxcomplete#Complete

set nocompatible               " use vim defaults
set scrolloff=3                " keep 3 lines when scrolling
set ai                         " set auto-indenting on for programming
set nu                         " set line numbers
set showcmd                    " display incomplete commands
set nobackup                   " do not keep a backup file
"set rnu                        " show line numbers
set ruler                      " show the current row and column

set hlsearch                   " highlight searches
set incsearch                  " do incremental searching
set showmatch                  " jump to matches when entering regexp
set ignorecase                 " ignore case when searching
set smartcase                  " no ignorecase if Uppercase char present

set visualbell t_vb=           " turn off error beep/flash
set novisualbell               " turn off visual bell

set backspace=indent,eol,start " make that backspace key work the way it should

syntax on                      " turn syntax highlighting on by default
filetype on                    " detect type of file
filetype indent on             " load indent file for specific file type

" Map jj to ESC
ino jj <esc>
cno jj <c-c>
vno v <esc>

nmap <silent> <C-D> :NERDTreeToggle<CR>

" set guioptions-=m " turn off menu bar
" set guioptions-=T " turn off toolbar
" set guioptions-=M " does not run the menubar script
" set guioptions-=r " removes the right-hand scroll bar
" set guioptions-=R " removes the right-hand scroll bar
" set guioptions-=l " removes the left-hand scroll bar
" set guioptions-=L " removes the left-hand scroll bar

" Dictionary word autocomplete with <C-N>
"set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words

" Used for man pages
let pager=''

colorscheme neverland_select

set directory=~/.vim/swap,.

" Why is this not a default
set hidden

" Don't update the display while executing macros
set nolazyredraw

" At least let yourself know what mode you're in
set showmode

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" Set the search scan to wrap around the file
set wrapscan

" Make command line two lines high
set ch=2

" set visual bell -- I hate that damned beeping
set vb

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Set the status line the way I like it
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]

" tell Vim to always put a status line in, even if there is only one
" window
set laststatus=2

" Hide the mouse pointer while typing
set mousehide

" Turn off mouse all together
set mouse=""
" set mouse="a"

" The GUI (i.e. the 'g' in 'gvim') is fantastic, but let's not be
" silly about it :)  The GUI is fantastic, but it's fantastic for
" its fonts and its colours, not for its toolbar and its menus -
" those just steal screen real estate
set guioptions=ac

" This is the timeout used while waiting for user input on a
" multi-keyed macro or while just sitting and waiting for another
" key to be pressed measured in milliseconds.
"
" i.e. for the ",d" command, there is a "timeoutlen" wait
"      period between the "," key and the "d" key.  If the
"      "d" key isn't pressed before the timeout expires,
"      one of two things happens: The "," command is executed
"      if there is one (which there isn't) or the command aborts.
"
" The idea here is that if you have two commands, say ",dv" and
" ",d" that it will take 'timeoutlen' milliseconds to recognize
" that you're going for ",d" instead of ",dv"
"
" In general you should endeavour to avoid that type of
" situation because waiting 'timeoutlen' milliseconds is
" like an eternity.
set timeoutlen=500

" Keep some stuff in the history
set history=100

" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" When the page starts to scroll, keep the cursor 8 lines from
" the top and 8 lines from the bottom
set scrolloff=8

" Allow the cursor to go in to "invalid" places
set virtualedit=all

" Incrementally match the search.  I orignally hated this
" but someone forced me to live with it for a while and told
" me that I would grow to love it after getting used to it...
" turns out he was right :)
set incsearch

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

" Set up the gui cursor to look nice
" set guicursor=n-v-c:block-Cursor-blinkon0
" set guicursor+=ve:ver35-Cursor
" set guicursor+=o:hor50-Cursor
" set guicursor+=i-ci:ver25-Cursor
" set guicursor+=r-cr:hor20-Cursor
" set guicursor+=sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" Add ignorance of whitespace to diff
" set diffopt+=iwhite

noremap   <Up>    ""
noremap!  <Up>    <Esc>
noremap   <Down>  ""
noremap!  <Down>  <Esc>
noremap   <Left>  ""
noremap!  <Left>  <Esc>
noremap   <Right> ""
noremap!  <Right> <Esc>

" Let Mathematica be the default
let filetype_m="mma"

" The beast following is something i didn't write... it will return the
" syntax highlighting group that the current "thing" under the cursor
" belongs to -- very useful for figuring out what to change as far as
" syntax highlighting goes.
" nmap <silent> <Esc> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name")
"      \ . '> trans<' . synIDattr(synID(line("."),col("."),0),"name")
"      \ . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name")
"      \ . ">"<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   							   LaTeX Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   							   Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" git://github.com/astashov/vim-ruby-debugger.git",
" BUNDLE: git://github.com/msanders/snipmate.vim.git
" BUNDLE: git://github.com/scrooloose/nerdtree.git
" git://github.com/timcharper/textile.vim.git
" git://github.com/tpope/vim-cucumber.git
" git://github.com/tpope/vim-fugitive.git
" git://github.com/tpope/vim-git.git
" git://github.com/tpope/vim-haml.git
" git://github.com/tpope/vim-markdown.git
" git://github.com/tpope/vim-rails.git
" BUNDLE: git://github.com/tpope/vim-repeat.git
" BUNDLE: git://github.com/tpope/vim-surround.git
" git://github.com/tpope/vim-vividchalk.git
" BUNDLE: git://github.com/tsaleh/vim-align.git
" BUNDLE: git://github.com/godlygeek/tabular.git
" git://github.com/tsaleh/vim-shoulda.git
" BUNDLE: git://github.com/tsaleh/vim-supertab.git
" BUNDLE: git://github.com/kevinw/pyflakes-vim.git
" git://github.com/tsaleh/vim-tcomment.git
" git://github.com/vim-ruby/vim-ruby.git

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   							   Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove all whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

autocmd BufWritePre *.py,*.js,*.c,*,cpp,*.c++,*,hpp,*.hpp :call <SID>StripTrailingWhitespaces()


