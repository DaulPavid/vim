"=============================
" DaulPavid VIM Configuration "
"=============================

"" General settings
syntax on
set number
set numberwidth=5
set nocompatible
set encoding=utf-8
set diffopt+=vertical

" Remap common keys
imap jk <Esc>

" Tabs and spaces
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2

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

" Auto-write on running commands
set autowrite

" Disable backups and swap file
set nobackup
set nowritebackup
set noswapfile

" Disable modelines
set modelines=0
set nomodeline

" Split panes to the right and bottom
set splitbelow
set splitright

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
let g:SuperTabDefaultCompletionType = 'context'

" Setup the clipboard
set clipboard+=unnamed
vmap <C-c> "+y
nmap <C-b> "+p

"" VimCompletesMe
autocmd FileType c let b:vcm_tab_complete = 'omni'

" Close the omni complete preview window
" when a selection is made
autocmd CompleteDone * pclose

"" fzf
" Settings
set grepprg=ag\ --nogroup\ --nocolor

" Set the default fzf command to the silver searcher
let $FZF_DEFAULT_COMMAND = 'ag --literal --files-with-matches --nocolor --hidden -g ""'

" Color scheme
let g:fzf_colors = {
\   'fg':      ['fg', 'Normal'],
\   'bg':      ['bg', 'Normal'],
\   'hl':      ['fg', 'Comment'],
\   'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
\   'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
\   'hl+':     ['fg', 'Statement'],
\   'info':    ['fg', 'PreProc'],
\   'border':  ['fg', 'Ignore'],
\   'prompt':  ['fg', 'Conditional'],
\   'pointer': ['fg', 'Exception'],
\   'marker':  ['fg', 'Keyword'],
\   'spinner': ['fg', 'Label'],
\   'header':  ['fg', 'Comment'] }

" Enable command history
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Key bindings
nnoremap <c-p> :FZF<cr>

" fzf layout
let g:fzf_layout = { 'down': '~35%' }
