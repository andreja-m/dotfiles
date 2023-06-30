" Pluginz
call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'sheerun/vim-polyglot'
"Plug 'christoomey/vim-system-copy'
"Plug 'EtiamNullam/deferred-clipboard.nvim'

call plug#end()

" Plugin conf
" airline
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'  " f/p/file-name.js

nnoremap <F5> :w <CR>
nnoremap <F9> :NERDTree <CR>
nnoremap <F10> :NERDTreeClose <CR>
nnoremap <F2> :FZF <CR>
nnoremap <C-j> :bprev <CR>
nnoremap <C-k> :bnext <CR>
"vnoremap <C-c> "*yy <CR>
"vnoremap <C-c> "*y
"vnoremap <C-c>y  "+y

set nu
set relativenumber
colorscheme onedark
"set clipboard+=unnamedplus
"
" Enable clipboard support
set clipboard+=unnamedplus
" In normal/visual mode == \ + y
nnoremap <leader>yy "+yy


