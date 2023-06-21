call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
"Plug 'ycm-core/YouCompleteMe'
"Plug 'neoclide/coc.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'sheerun/vim-polyglot'

call plug#end()

let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'  " f/p/file-name.js
"let g:ycm_global_ycm_extra_conf = '~/.config/nvim/.ycm_extra_conf.py'
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_server_path = '~/.conf/nvim/YouCompleteMe/third_party/ycmd/ycmd'


nnoremap <F9> :NERDTree<CR>
nnoremap <F10> :NERDTreeClose<CR>
nnoremap <F2> :FZF <CR>
nnoremap <C-j> :bprev <CR>
nnoremap <C-k> :bnext <CR>

set nu
set relativenumber
set clipboard+=unnamedplus
colorscheme onedark
