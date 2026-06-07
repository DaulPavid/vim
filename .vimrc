"==============================
" DaulPavid VIM Configuration "
"==============================

"" General
set nocompatible
syntax on
filetype plugin indent on
set encoding=utf-8
set number
set numberwidth=5
set showmatch
set hlsearch
set incsearch
set history=500
set textwidth=80
set colorcolumn=80
set autowrite
set splitbelow splitright
set diffopt+=vertical
set updatetime=100
set lazyredraw
set completeopt=menuone,noselect
set clipboard^=unnamed,unnamedplus

"" No swap/backup
set nobackup nowritebackup noswapfile

"" Modelines off
set modelines=0 nomodeline

"" Tabs and spaces
set expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType javascript,typescript,html,css,scss,json,yaml
      \ setlocal shiftwidth=2 tabstop=2 softtabstop=2

"" C indenting
set cinoptions+=g0
set cinoptions+=N-s

"" Tags
set tags+=tags;/

"" Restore last cursor position
autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"" Close omni-complete preview after selection
autocmd CompleteDone * pclose

"" Plugins (native packages)
packloadall
silent! helptags ALL

"" Theme
if has('termguicolors')
  set termguicolors
endif
let g:onedark_terminal_italics = 1
colorscheme onedark

"" Statusline
set laststatus=2
set ttimeoutlen=50
set statusline=
set statusline+=\ %f
set statusline+=\ %m%r%h%w
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ %l:%c
set statusline+=\ %p%%\

"" Whitespace
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1
let g:strip_whitespace_confirm = 0

"" fzf (ripgrep)
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!.git/*"'
let g:fzf_layout = { 'down': '~35%' }
let g:fzf_history_dir = '~/.local/share/fzf-history'
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

"" Keymaps (leader = Space)
let mapleader = " "
inoremap jk <Esc>
nnoremap <C-p>     :Files<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>/ :nohlsearch<CR>
