syntax on

set noerrorbells
set nu " see line number even w/ relitive numbers (vs 0)
set nowrap
set smartcase " case insensitive search till enter cap
set noswapfile "no vim.swap files created
set nobackup
" set undodir=~/.config/nvim/undodir " where to store undo changes
set undofile " file per file
set scrolloff=8 " start scrolling at 8 lines end / beg of file

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


let mapleader=','
set relativenumber
set number

" paste correctly
" set pastetoggle=<F2>
set clipboard=unnamed

" tabs && spaces
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line

" show hidden chars
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
"
" highlight ColorColumn ctermbg=magenta
" call matchadd('ColorColumn', '\%81v', 100)
" :highlight ColorColumn ctermbg=red ctermfg=blue
" exec 'set colorcolumn=' . join(range(2,80,3), ',')

" set listchars=eol:¬,tab:→\·,trail:~,extends:>,precedes:<,space:·
" set list



call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter' " 

Plug 'roman/golden-ratio'
Plug 'editorconfig/editorconfig-vim'
" Plug 'christoomey/vim-tmux-navigator'
Plug 'joequery/Stupid-EasyMotion'
Plug 'tpope/vim-surround'

Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

Plug 'ajh17/vimcompletesme' " completg and jump to def
Plug 'danilamihailov/beacon.nvim' " like emacs beacon 
Plug 't9md/vim-choosewin' " like emacs switch window

" Plug 'scrooloose/nerdcommenter'
" Plug 'zivyangll/git-blame.vim'
" Plug 'Yggdroot/indentLine'

Plug 'terryma/vim-multiple-cursors'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'dracula/vim', { 'as': 'dracula' }

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


" window movement
" nnoremap <leader>h :wincmd h<CR>
" nnoremap <leader>j :wincmd j<CR>
" nnoremap <leader>k :wincmd k<CR>
" nnoremap <leader>l :wincmd l<CR>

nmap <Leader>, <Plug>(choosewin)
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

" netrw
let g:netrw_banner = 0 " supress netrw header
nmap <Leader>e :Explore<CR>

" fzf
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>

" Ripgreip
nnoremap <silent> <leader>. :Rg<cr>
nnoremap <silent> <leader>b :Buffers<cr>
" search file for specific chars
nnoremap <silent> <leader>bl :BLines<cr> 
nnoremap <silent> <leader>bh :History:<cr> 

" nmap ; :Buffers<CR>
" nmap <Leader>t :Files<CR>
" nmap <Leader>s :Ag<CR>

"saving
:nmap <c-x> <c-s> :w<CR>

" signify
let g:signify_mapping_next_hunk = '<leader>gj'
let g:signify_mapping_prev_hunk = '<leader>gk'
let g:signify_mapping_toggle_highlight = '<leader>gh'

" linting
let g:ale_lint_on_text_changed = 'never'
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0

" fugitive - git
nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>

" rainbow
" let g:rainbow_active = 1

" indentLine
let g:indentLine_char = '│'
let g:indentLine_showFirstIndentLevel = 1


" go color settings (beautify)
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1

let g:airline_powerline_fonts = 1
let g:airline_theme='dracula'

" airline filename path
"let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
"

" colorscheme slate
set background=dark
" colorscheme palenight
colorscheme dracula



