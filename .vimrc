"=============================
" DaulPavid VIM Configuration "
"=============================

"" General settings
syntax on
set number
set nocompatible
set encoding=utf-8

" Remap common keys
imap jk <Esc>

" Tabs and spaces
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Highlight matching closes
set showmatch

" Use the tags file from the current directory
set tags+=tags;/

" Text and wrapping
set history=500
set tw=80
set textwidth=80

" Color text that goes beyond 80 columns
set colorcolumn=80

" Highlight search
set hlsearch
set incsearch

" Reduce the processing by not redrawing unless something is typed
set lazyredraw

" Indicate fast terminal connection
set ttyfast

" Stop vim from indenting public/private keywords
set cinoptions+=g0

" Stop vim from indenting in namespaces
set cinoptions+=N-s

" Remember our last cursor position
" Got this off the Ubuntu Forums. Thanks Sentry!
autocmd BufReadPost * if line ("'\"") > 1 && line("'\"") <= line ("$") | exe "normal! g'\"" | endif

"" Load Pathogen
filetype off
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on

"" Load the onedark theme
colorscheme onedark

"" NERDTree
" Open NERDTree automatically if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Map CTRL+n to open NERDTree
map <C-n> :NERDTreeToggle<CR>

"" Airline
" There are no colors without this
set t_Co=256
" The status doesn't show until a split without this
set laststatus=2
" There might be a pause when leaving insert mode without this
set ttimeoutlen=50

"" Syntastic
" Recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

map <F3> :Errors<CR>

"" SuperTab
" Enable context based completion
let g:SuperTabDefaultCompletionType = "context"

"" vim-tags
" Auto-generate tags
let g:vim_tags_auto_generate = 0

" Map shift+t to generate tags
map <F9> :TagsGenerate<CR>

" Map ctrl+shift+t to force generate tags
map <F10> :TagsGenerate!<CR>

"" TagBar
" Map CTRL+t to the tagbar toggle
map <F2> :TagbarToggle<CR>

"" jedi-vim
let g:jedi#popup_on_dot = 0
set splitbelow

" Setup the clipboard
set clipboard+=unnamed
vmap <C-c> "+y
nmap <C-b> "+p
