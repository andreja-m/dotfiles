call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
"Plug 'Valloric/YouCompleteMe'
"Plug 'neoclide/coc.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'sheerun/vim-polyglot'



call plug#end()

let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline_theme='bubblegum'

nnoremap <F9> :NERDTree<CR>
nnoremap <F10> :NERDTreeClose<CR>
nnoremap <F2> :FZF <CR>


vnoremap <C-c> +y
set nu
set relativenumber
colorscheme onedark
