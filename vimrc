set nu

syntax on

vnoremap <C-c> "+y
map <C-v> "+P

set clipboard=unnamedplus

colorscheme evening 

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

" Add this to your vimrc to get a minimalist autocomplete pop
" Or use as a plugin : https://github.com/maxboisvert/vim-simple-complete

" Minimalist-TabComplete-Plugin
inoremap <expr> <Tab> TabComplete()
fun! TabComplete()
    if getline('.')[col('.') - 2] =~ '\K' || pumvisible()
        return "\<C-P>"
    else
        return "\<Tab>"
    endif
endfun

" Minimalist-AutoCompletePop-Plugin
set completeopt=menu,menuone,noinsert
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
autocmd InsertCharPre * call AutoComplete()
fun! AutoComplete()
    if v:char =~ '\K'
        \ && getline('.')[col('.') - 4] !~ '\K'
        \ && getline('.')[col('.') - 3] =~ '\K'
        \ && getline('.')[col('.') - 2] =~ '\K' " last char
        \ && getline('.')[col('.') - 1] !~ '\K'

        call feedkeys("\<C-P>", 'n')
    end
endfun
