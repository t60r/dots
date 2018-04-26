colorscheme nord
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
""let g:airline_symbols.branch = ''
""let g:airline_symbols.readonly = ''
""let g:airline_symbols.linenr = '☰'
""let g:airline_symbols.maxlinenr = ''
set nocompatible              " be iMproved, required
filetype off
let g:airline#extensions#tabline#enabled = 1
set background=dark
set t_Co=16
set mouse=a
set number
syntax on
set ruler
filetype plugin on
filetype indent on
set history=500
set showmatch
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set encoding=utf8
set ffs=unix,dos,mac
" use spaces instead of tabs
set expandtab
set laststatus=2
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
set colorcolumn=80
:inoremap ( ()<Esc>i
:inoremap { {}<Esc>i
:inoremap [ []<Esc>i
:inoremap " ""<Esc>i
":inoremap ' ''<Esc>i
:inoremap ` ``<Esc>i
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\
