" Set <space> to leader
let mapleader=' '
set relativenumber

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'roman/golden-ratio'
Plug 'editorconfig/editorconfig-vim'
Plug 'christoomey/vim-tmux-navigator'


call plug#end()


