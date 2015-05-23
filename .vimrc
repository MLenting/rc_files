filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
syntax on
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after
" filetype indent on

set tw=72
set brk=\ \
set lbr
set nu
set ts=2
set mouse=a
set so=999
"setlocal spell nospell
"set mousemodel=popup
"set spellfile=~/_vim/spell/nl.latin1.add
map \sn <Esc>:setlocal spelllang=nl spell<CR>
map \se <Esc>:setlocal spelllang=en spell<CR>
map \su <Esc>:setlocal nospell<CR>
set spell spelllang=en_gb
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

map <F2> :set spell spelllang=en <CR>
map <F3> :set spell spelllang=nl <CR>
map <F4> :w<CR>:!pdflatex %<CR> <CR> 
"Map <F5> "Mapped to latex-suite
map <F6> :wa<CR>:!make -f Makefile nu<CR> 
" <CR> :!make -f Makefile clean<CR> <CR>
"Map <F7> "Mapped to latex-suite
"Map <F8>
"Map <F9> "Mapped to latex-suite
map <F10> :wa <CR> :mks! report.vim <CR> :xa <CR>
"map <F11> 
map <F12> :!make -f Makefile clean<CR>
