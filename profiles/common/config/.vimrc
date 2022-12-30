set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set nu

execute pathogen#infect()
filetype plugin indent on

syntax on
colorscheme solarized

nnoremap <leader>n :NERDTreeFocus<CR>
autocmd VimEnter * NERDTree

set rtp+=/opt/homebrew/opt/fzf
