execute pathogen#infect()

set nocompatible
syntax on
set ruler

set nowrap

colorscheme base16-tomorrow
syntax enable
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set showcmd

filetype plugin indent on

set wildmenu
set lazyredraw
set autoindent

set incsearch
set hlsearch
set smartcase
set showmatch
set ignorecase

set foldenable
set runtimepath^=~/.vim/bundle/ctrlp.vim

set list
set listchars=tab:›\ ,eol:¬
highlight NonText ctermfg=darkgray
highlight SpecialKey ctermfg=darkgray

set scrolloff=1


function! InsertTabWrapper()
   let col = col(".") - 1
   if !col || getline(".")[col - 1] !~ '\k'
      return "\<tab>"
   else
      return "\<c-n>"
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-p>


set backup
if &backupdir =~# '^\.,'
   let &backupdir = "/home/jan/.vim/backup," . &backupdir
endif

set swapfile
if &directory =~# '^\.,'
   let &directory = "/home/jan/.vim/swap," . &directory
endif

set undofile
if &undodir =~# '^\.\%(,\|$\)'
   let &undodir = "/home/jan/.vim/undo" . &undodir
endif


nnoremap <tab> >>
nnoremap <s-tab> <<
vnoremap <tab> >
vnoremap <s-tab> <
