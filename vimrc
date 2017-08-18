"Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Vundle Plugins""""""""""""""""
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'othree/yajs.vim'
Plugin 'othree/es.next.syntax.vim'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-fugitive'
Plugin 'morhetz/gruvbox'
Plugin 'elzr/vim-json'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ternjs/tern_for_vim'
Plugin 'mhartington/oceanic-next'
Plugin 'rakr/vim-one'

"""""""""""""""""""""""""""""""
call vundle#end()
filetype plugin on

"vim settings
set number
set clipboard=unnamedplus

" Keep 4 lines top/bottom when scrolling
set scrolloff=25

" Search and Highlighting
set wrapscan
set magic
set showmatch
set hlsearch
set incsearch
set ignorecase smartcase
set enc=utf-8
set nofoldenable


" Backup stuff
set nobackup
set nowritebackup
set noswapfile

" Smart tabbing / wrapping / autoindenting
set nowrap
set equalalways
set undolevels=150
set nocompatible
set backspace=2
set tabstop=2
set shiftwidth=0
set autoindent

" list settings
set showbreak=↪\ 
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set list

" colors
set t_Co=256
if (has("termguicolors"))
  set termguicolors
endif
syntax on
set background=dark
" let g:gruvbox_contrast_dark = 'hard'
colorscheme one 
highlight Pmenu ctermbg=39 gui=bold
highlight MatchParen cterm=bold ctermbg=none ctermfg=darkblue
highlight SpecialKey ctermfg=233
highlight NonText ctermfg=233

" ale settings
set nocompatible
filetype off
let &runtimepath.=',~/.vim/bundle/ale'
filetype plugin on
let g:ale_linters = {
\	'javascript': ['eslint'],
\	'css': ['stylelint'],
\	'scss': ['stylelint'],
\	'sass': ['stylelint'],
\}

let g:ale_fixers = {
\	'javascript': ['eslint'],
\	'css': ['stylelint'],
\	'scss': ['stylelint'],
\	'sass': ['stylelint'],
\}

" airline settings
set laststatus=2
let g:airline_theme='oceanicnext'
"let g:airline_powerline_fonts=1

" ctrlp settings
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" YCM settings
let g:ycm_filepath_completion_use_working_dir=1
set completeopt-=preview

" vim-json settings
let g:vim_json_syntax_conceal = 0

"Keymappings
nnoremap <silent> <F6> :NERDTreeToggle<CR>
nnoremap <silent> <C-l> :NERDTreeFind<CR>
nnoremap <silent> <C-f> :ALEFix<CR>
nnoremap <silent> <C-k> :ALEPreviousWrap<CR>
nnoremap <silent> <C-j> :ALENextWrap<CR>

set timeoutlen=1000 ttimeoutlen=0
