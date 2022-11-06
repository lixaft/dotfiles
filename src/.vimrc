" Vim configuration file.
"
" Description:
"
"   Vim (Vi IMproved) is a highly configurable text editor built to make
"   creating and changing any kind of text very efficient.
"
" Location:
"
"   ~/.vimrc
"

" === Editor ===

set autoindent         " Keep the current indent level on a new line.
set clipboard=unnamed  " Use the system clipboard for yank/past operations.
set colorcolumn=80     " Show a vertical bar at the 80th column.
set expandtab          " Replace tab by spaces.
set foldmethod=indent  " Fold based on indent.
set foldnestmax=3      " Deepest fold is 3 levels.
set linebreak          " Try to Wrap lines at convenient points.
set mouse=a            " Enable basic mouse behavior.
set nofoldenable       " Dont fold by default.
set nowrap             " Disable the line wrapping.
set relativenumber     " Show the relative line number.
set shiftwidth=4       " The length of a tab.
set smartindent        " Be smart on the indentation of new lines ;)
set smarttab           " Automatically use the next indent level.
set tabstop=4          " Define one tab equal 4 spaces.
syntax on              " Turn on syntax highlighting.

" Prevents all annoying noises.
set noerrorbells     " Turn off the ring bell.
set novisualbell     " Turn off the visual bell.
if exists("belloff") " Completly turn off the bell.
    set belloff=all
endif

" Highlight the trailing white spaces.
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Support resizing in tmux.
if exists('$TMUX')
    set ttymouse=xterm2
endif

" Configure the cursor mode.
"   1 -> blinking block
"   2 -> solid block
"   3 -> blinking underscore
"   4 -> solid underscore
"   5 -> blinking vertical bar
"   6 -> solid vertical bar
let &t_EI.="\<Esc>[2 q"  " Normal mode (else).
let &t_RI.="\<Esc>[2 q"  " Replace mode.
let &t_SI.="\<Esc>[6 q"  " Insert mode.

" Function and command to clear all the register at once.
function! ClearRegisters()
    let regs='abcdefghijkpqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"*'
    for char in split(regs, '\zs')
        exec 'let @' . char . '=""'
    endfor
endfunction
command! ClearRegisters call ClearRegisters()

" === Explorer ===

set wildmenu               " Turn on wildmenu.
set wildmode=list:longest  " List all match and complete till the longest.

" List file patterns that should be hidden from the explorer.
set wildignore=
set wildignore+=*.pyc
set wildignore+=__pycache__/**
set wildignore+=.DS_Store

" Hide files in the netrw explorer.
let g:netrw_list_hide='.*\.py[cod]$'

" === Files ===

filetype indent on  " Load indent associated with the buffer filetype.
filetype plugin on  " Load plugin associated with the buffer filetype.
set directory-=.    " Don't store swap file in the current directory.
set encoding=utf8   " Set the character encoding used inside Vim.
set history=500     " Increase the size of the undo stack.
set nobackup        " Don't use backup file.

" === Mapping ===

" Define leader keys.
let mapleader=" "
let maplocalleader="-"

" Quickly edit and source .vimrc file.
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Global folding.
nnoremap <leader>O ggVGzO<c-o><c-o>
nnoremap <leader>C ggVGzC<c-o><c-o>

" Preserve the jump list using { and } motions.
nnoremap { :<c-u>execute "keepjumps norm! " . v:count1 . "{"<cr>
nnoremap } :<c-u>execute "keepjumps norm! " . v:count1 . "}"<cr>

" Remove highlight.
nnoremap <leader>h :noh<cr>

" Open explorer.
nnoremap <leader>ps :Exp<cr>

" Restore the increse number overriden by tmux.
if exists('$TMUX')
    nnoremap <c-b> <c-a>
endif

" Turn off highlighting.
nnoremap <leader>h :noh

" === Search ===

set hlsearch    " Highlight search results.
set ignorecase  " Ignore case when searching.
set incsearch   " Make search act like search in modern browsers.
set smartcase   " When searching, try to be smart about cases.

" === Workbench ===

set laststatus=2  " Always show the statusline.
set ruler         " Show the row/column position of the cursor.

" Customize the status line.
set statusline=
set statusline+=%n              " The number of the buffer.
set statusline+=\ %f            " The path to the edited file.
set statusline+=\ %r            " Whether the file is read-only or not.
set statusline+=\ %m            " Whether the file is edited or not.
set statusline+=%=              " Go to the right side.
set statusline+=\ %p%%          " Show the percentage.
set statusline+=\ Ln\ %l/%L     " Number of current/total line.
set statusline+=\ Col\ %02c%V   " Column number.
set statusline+=\ Char\ 0x%04B  " Whether the file is read-only or not.
set statusline+=\ %y            " The format of the file.

" === Local ===

if filereadable($HOME . "/.vimrc.local")
    source ~/.vimrc.local
endif
