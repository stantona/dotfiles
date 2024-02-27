set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set nu

execute pathogen#infect()
filetype plugin indent on

syntax on
set background=dark
colorscheme solarized

nnoremap <leader>n :NERDTreeFocus<CR>

set rtp+=/opt/homebrew/opt/fzf

" Removes trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

nmap <C-b> :Buffers<CR>
nmap <C-f> :Files<CR>
