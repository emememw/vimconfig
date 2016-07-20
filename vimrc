"vim settings
set number

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
set autoindent
set backspace=2
set tabstop=2

" colors
set t_Co=256
syntax on
set background=dark
colorscheme maui 
highlight Pmenu ctermbg=39 gui=bold

" airline settings
set laststatus=2
"let g:airline_powerline_fonts=1

" syntastic settings
let g:syntastic_check_on_open=1
let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
if matchstr(local_eslint, "^\/\\w") == ''
	let local_eslint = getcwd() . "/" . local_eslint
endif
if executable(local_eslint)
	let g:syntastic_javascript_eslint_exec = local_eslint
endif

" ctrlp settings
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"Keymappings
nnoremap <silent> <F6> :NERDTreeToggle<CR>
nnoremap <silent> <C-l> :NERDTreeFind<CR>
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>

set timeoutlen=1000 ttimeoutlen=0
