call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'

call plug#end()

let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline_theme='bubblegum'

nnoremap <F5> :NERDTree<CR>
nnoremap <F6> :NERDTreeClose<CR>


vnoremap <C-c> +y
set nu
set relativenumber
