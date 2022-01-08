"For syntax highlighting specific to certain files, and
"also indentation
"Update: 4/11-2021, not a big fan of auto-indentation.
filetype plugin on
filetype indent off

syntax on
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set relativenumber
"I don't really like the plus register.
set clipboard+=unnamedplus

set colorcolumn=80
highlight ColorColumn ctermbg=DarkGrey

nnoremap <leader>w :set wrap!<CR>
nnoremap <leader>xl :!xelatex %<CR><CR>
nnoremap <leader>pl :!pdflatex %<CR><CR>
" Remap jj to esc when in insert mode
inoremap jj <esc>
" Escape from insert and write
inoremap jw <esc>:w<CR>
" Hotkey to write when in normal mode
nnoremap ww :w<CR>

call plug#begin()
Plug 'JuliaEditorSupport/julia-vim'
Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox

highlight Normal     ctermbg=NONE guibg=NONE

" When the file $HOME/todo/todo.md is written, we kill conky with the SIGUSR1
" signal. It then immediately restarts
autocmd BufWritePost $HOME/todo/todo.md silent exec "!killall -SIGUSR1 conky"
