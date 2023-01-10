" set tab to 4 spaces when entered
set tabstop=4

"Indent by 4 when shift + > or backwards
set shiftwidth=4

" better looking numbers
set nu

" Highlight the syntax
syntax on
syntax enable

" Enable copy to system clipboard
vnoremap <C-c> "+y
"map <C-v> "+P

set clipboard=unnamedplus

" VIM Them
colorscheme desert
set background=dark

" This retarded numbers on the right
set relativenumber

" Auto indent by 4
set autoindent
set expandtab

" Shows status bar
set laststatus=2

" Shows on every 4th space  
set listchars=multispace:┊\ \ \ 
set list

" This sets rulers, vertical/horisontal
set cursorcolumn
set cursorline

" Minimalist-AutoCompletePop-Plugin
set completeopt=menu,menuone,noinsert
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
autocmd InsertCharPre * call AutoComplete()
fun! AutoComplete()
    if v:char =~ '\K'
        "\ && getline('.')[col('.') - 4] !~ '\K'
        "\ && getline('.')[col('.') - 3] =~ '\K'
        \ && getline('.')[col('.') - 2] !~ '\K' " last char
        \ && getline('.')[col('.') - 1] !~ '\K'
        
        call feedkeys("\<C-P>", 'n')
    end
endfun

set completeopt+=noinsert

"set completeopt=noinsert,noselect,menu,menuone,longest

