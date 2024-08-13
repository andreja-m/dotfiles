" install polyglot!!!
" git clone --depth 1 https://github.com/sheerun/vim-polyglot ~/.vim/pack/plugins/start/vim-polyglot
:set makeprg=gcc\ -Wall\ %
let &makeprg = 'matmake2 -t gcc-debug'


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

" Ruler
"set colorcolumn=72

" Enable copy to system clipboard
map <F2> :FZF <CR>
map <F5> :w <CR>
map <F12> :q <CR>
vnoremap <C-c> "+y
"map <C-v> "+P

set clipboard=unnamedplus

" VIM Theme
colorscheme desert
set background=dark

" This retarded numbers on the right
set relativenumber

" Auto indent by 4
set autoindent
set expandtab

"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set term=xterm-256color
set termencoding=utf-8
set guifont=Ubuntu\ Mono\ derivative\ Powerline:10

" Shows status bar
set laststatus=2
" For Windows vim, or if retarded on ubuntu
set statusline=

hi StatusLine           ctermfg=253         ctermbg=233         cterm=bold
hi StatusLineNormal     ctermfg=251         ctermbg=darkblue    cterm=bold
hi StatusLineInsert     ctermfg=green       ctermbg=darkgray    cterm=bold
hi StatusLineReplace    ctermfg=251         ctermbg=88          cterm=bold
hi StatusLineVisual     ctermfg=0           ctermbg=magenta     cterm=bold
hi StatusLineVisualL    ctermfg=0           ctermbg=magenta     cterm=bold
hi StatusLineVisualB    ctermfg=0           ctermbg=magenta     cterm=bold
hi StatusLineCommand    ctermfg=green       ctermbg=0           cterm=bold
hi StatusLineSelect     ctermfg=251         ctermbg=130         cterm=bold
hi StatusLineSelectL    ctermfg=251         ctermbg=130         cterm=bold
hi StatusLineSelectB    ctermfg=251         ctermbg=130         cterm=bold
hi StatusLineTerminal   ctermfg=251         ctermbg=22          cterm=bold

let s:statusline_modes_dict = {
    \ 'n' : {
        \ 'text'        : 'NORMAL',
        \ 'color_group' : 'StatusLineNormal'
    \ },
    \ 'i' : {
        \ 'text'        : 'INSERT',
        \ 'color_group' : 'StatusLineInsert'
    \ },
    \ 'R' : {
        \ 'text'        : 'REPLACE',
        \ 'color_group' : 'StatusLineReplace'
    \ },
    \ 'v' : {
        \ 'text'        : 'VISUAL',
        \ 'color_group' : 'StatusLineVisual'
    \ },
    \ 'V' : {
        \ 'text'        : 'V·LINE',
        \ 'color_group' : 'StatusLineVisualL'
    \ },
    \ "\<C-v>" : {
        \ 'text'        : 'VISUAL·BLOCK',
        \ 'color_group' : 'StatusLineVisualB'
    \ },
    \ 'c' : {
        \ 'text'        : 'COMMAND',
        \ 'color_group' : 'StatusLineCommand'
    \ },
    \ 's' : {
        \ 'text'        : 'SELECT',
        \ 'color_group' : 'StatusLineSelect'
    \ },
    \ 'S' : {
        \ 'text'        : 'S·LINE',
        \ 'color_group' : 'StatusLineSelectL'
    \ },
    \ "\<C-s>" : {
        \ 'text'        : 'S·BLOCK',
        \ 'color_group' : 'StatusLineSelectB'
    \ },
    \ 't' : {
        \ 'text'        : 'TERMINAL',
        \ 'color_group' : 'StatusLineTerminal'
    \ },
\ }

function Get_current_mode_text ()
    let md = mode()
    if (has_key (s:statusline_modes_dict, md))
        return s:statusline_modes_dict[md]['text']
    endif
    return md
endfunction

function Get_current_mode_color_group ()
    let md = mode()
    if (has_key (s:statusline_modes_dict, md))
        return "%#" . s:statusline_modes_dict[md]['color_group'] . "#"
    endif
    return "%#StatusLine#"
endfunction

" left
"set statusline=
set statusline+=%{%Get_current_mode_color_group()%}\ 
set statusline+=%{Get_current_mode_text()}\ 
set statusline+=%#Statusline# 

" This is to know if file is saved or not
highlight IsModified    ctermbg=red   ctermfg=black
highlight IsNotModified ctermbg=black ctermfg=green

" Dynamic status line
set statusline+=%#IsModified#%{&mod?expand('\ ✘\ '):''}%*%#IsNotModified#%{&mod?'':expand('\ ✓\ ')}%*
"               \______________ Part A _____________/\______________ Part B ________________/

set statusline+=\ $PATH:%F        " Path to the file
set statusline+=%=          " Switch to the right side
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}\ 
hi Visual ctermbg=darkgreen ctermfg=white term=bold
set statusline+=%#Visual#%{(mode()=='v')?'':''}
set statusline+=\ Σ\ =
set statusline+=\ %{\ line2byte(line(\"$\")+1)-1\ }\ B
set statusline+=\ 
"hi statusline ctermbg=white
hi VisualColor ctermbg=darkgrey ctermfg=white 
set statusline+=%#VisualColor#%{(mode()=='v')?'':''}
set statusline+=\ ☰      " Just sets 'Col:' string
set statusline+=\ %l        " Current line
set statusline+=:           " Separator
set statusline+=%L          " Total linesne=%l
set statusline+=- 
set statusline+=%v
set statusline+=\ ⮀
set statusline+=\ %P\ 

" default statusline
"set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

"set statusline+=%{%Get_current_mode_color_group()%}\ DOOM 
set statusline+=%{%Get_current_mode_color_group()%}\ (>^.^<)
set statusline+=\ 

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

let python_highlight_all = 1

set shell=/usr/bin/bash


"sign define MyWarningSign text=! linehl=ErrorMsg
"sign place 123 line=1 name=MyWarningSign

"term python -m pudb %
"
"autocmd BufWinEnter *.py nmap <silent> <F5>:w<CR>:terminal python3 -m pdb '%:p'<CR>


