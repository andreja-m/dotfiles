" highlight search
set hlsearch

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

let g:currentmode={
       \ 'n'  : 'NORMAL ',
       \ 'v'  : 'VISUAL ',
       \ 'V'  : 'VISUAL·Line ',
       \ "\<C-V>" : 'VISUAL·Block ',
       \ 'i'  : 'INSERT ',
       \ 'R'  : 'R ',
       \ 'Rv' : 'V·Replace ',
       \ 'c'  : 'Command ',
       \}

"set statusline+=\ %{toupper(g:currentmode[mode()])}

hi Mode cterm=bold ctermfg=black ctermbg=magenta
set statusline+=
set statusline+=%#Mode#\ %{toupper(g:currentmode[mode()])}

" Define a function to get the current mode
"function! GetCurrentMode()
"  let l:mode = toupper(g:currentmode[mode()])
"  if l:mode == "NORMAL"
"    return "ctermfg=blue"
"  elseif l:mode == "INSERT"
"    return "ctermfg=green"
"  elseif l:mode == "VISUAL"
"    return "ctermfg=purple"
"  else
"    return ""
"  endif
"endfunction
"
"" Add the current mode to the statusline
"set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
"setlocal statusline+=%#{GetCurrentMode()}%t {GetCurrentMode()}


" This is to know if file is saved or not
highlight IsModified    ctermbg=red   ctermfg=white
highlight IsNotModified ctermbg=black ctermfg=green

" Dynamic status line
set statusline+=%#IsModified#%{&mod?expand('%'):''}%*%#IsNotModified#%{&mod?'':expand('%')}%*
"               \______________ Part A _____________/\______________ Part B ________________/

set statusline+=\ %F        " Path to the file
set statusline+=%=          " Switch to the right side
set statusline+=\Col:       " Just sets 'Col:' string
set statusline+=\ %l        " Current line
set statusline+=/           " Separator
set statusline+=%L          " Total linesne=%l
set statusline+=\ --------->
set statusline+=\ %P
"set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set statusline+=\ %#Mode#\ %{toupper('DOOM')}
set statusline+=%#Mode#\ %{toupper('')}

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


