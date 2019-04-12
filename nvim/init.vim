" Set <space> to leader
let mapleader=','
set relativenumber


" paste correctly
" set pastetoggle=<F2>
set clipboard=unnamed

" show hidden chars
" :set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
"
 highlight ColorColumn ctermbg=magenta
 call matchadd('ColorColumn', '\%81v', 100)
" :highlight ColorColumn ctermbg=red ctermfg=blue
" exec 'set colorcolumn=' . join(range(2,80,3), ',')

" set listchars=eol:¬,tab:→\·,trail:~,extends:>,precedes:<,space:·
set list

" linting
let g:ale_lint_on_text_changed = 'never'
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0


" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'roman/golden-ratio'
Plug 'editorconfig/editorconfig-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'joequery/Stupid-EasyMotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/rainbow_parentheses.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'zivyangll/git-blame.vim'
Plug 'Yggdroot/indentLine'

" languages
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" linting (async)
Plug 'w0rp/ale'

call plug#end()

" set loc for tmp files
set backupdir=~/tmp,.
set directory=~/tmp,.

" fzf
nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>s :Ag<CR>

"saving
:nmap <c-x> <c-s> :w<CR>

colorscheme slate
