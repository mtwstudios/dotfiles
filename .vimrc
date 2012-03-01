set nocompatible
syntax on

set ruler      " show the cursor position at all time
set showcmd    " show incomplete commands
set incsearch  " do incremental searching

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Always display the status line
set laststatus=2

:highlight ExtraWhitespace ctermbg=red guibg=red
" Show trailing whitespace
" from http://vim.wikia.com/wiki/Highlight_unwanted_spaces
:match ExtraWhitespace /\s\+\%#\@<!$/