set nocompatible
syntax on

set ruler      " show the cursor position at all time
set number
set showcmd    " show incomplete commands
set incsearch  " do incremental searching

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

set autoindent
set paste       " ignore tabs when I paste stuff as to not mess up indentation

" Always display the status line
set laststatus=2

:highlight ExtraWhitespace ctermbg=red guibg=red
" Show trailing whitespace
" from http://vim.wikia.com/wiki/Highlight_unwanted_spaces
:match ExtraWhitespace /\s\+\%#\@<!$/
" Remove all trailing whitespace by hitting F5
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Ctrl+L = PHP Lint!
:autocmd FileType php noremap <C-L> :!/usr/bin/php -l %<CR>
