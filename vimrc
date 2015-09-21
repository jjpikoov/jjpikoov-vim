syntax on
set smartindent


set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

set scrolloff=999

set ruler
set showcmd    
set wildmenu
set number

set showmode
set visualbell

set confirm

"Terminal color (gnome)
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif


"""""""""""""""""""""""""
"""    CODING """"""""""
""""""""""""""""""""""""
set encoding=utf-8
set termencoding=utf-8

""""""""""""""""""""""""
""""""   BINDS   """""""
"""""""""""""""""""""""
imap <C-k> <esc>:exec "normal l"<enter>a
imap <C-j> <esc>:exec "normal h"<enter>a
imap <C-h> <esc>:exec "normal e"<enter>a
imap <C-g> <esc>:exec "normal b"<enter>i
imap <C-e> <esc>:exec "normal $"<enter>a
imap <C-a> <esc>:exec "normal 0"<enter>i
imap <C-d> <esc>xi
inoremap <C-Space> <C-x><C-o>

"Spacebar in NORMAL mode
nmap <space> i<space><Esc>l

"Enter in NORMAL mode
nmap <enter> i<enter><Esc><o><esc><l>

"NEXT / PREVIOUS BUFFER / DELETE BUFFER
nmap . :bn<enter>
nmap ,  :bp<enter>
nmap qq :bd<enter>
nmap `` :q<enter>
nmap zz :w<enter>
imap zz <esc>:w<enter>
" TO LIST ALL BUFFERS AND CHOOSE ONE OF THEM
:nnoremap <F5> :buffers<CR>:buffer<Space>

"RESIZING WINDOWS
nmap <Up> :res +5<enter>
nmap <Down> :res -5<enter>
nmap <Right> :vertical resize +5<enter>
nmap <Left> :vertical resize -5<enter>

"""""""""""""""""""""""
"""""""" FONTS """"""""
"""""""""""""""""""""""
if has('win32') || has('win64')
    set guifont=Consolas
elseif has('unix')
    set guifont=Monospace\ 10
endif

"""""""""""""""""""""""
""" STATUS LINE  """"""
"""""""""""""""""""""""
set laststatus=2
set statusline=
set statusline+=%-3.3n\
set statusline+=%f\
set statusline+=%h%m%r%w
set statusline+=\[%{strlen(&ft)?&ft:'none'}]
set statusline+=%=
set statusline+=0x%-8B
set statusline+=%-14(%l,%c%V%)
set statusline+=%<%P

""""""""""""""""""""""
"""" ABBREVS """""""""
""""""""""""""""""""""

"""""""""""""""""""""""
"""   SEARCHING  """"""
"""""""""""""""""""""""
set incsearch
set ignorecase
set hlsearch "check if its fucking highlight after my search


"""""""""""""""""""""""
""""   PLUGINS  """""""
"""""""""""""""""""""""
filetype plugin on

"PATHOGEN
execute pathogen#infect()

"SCHEME
colors molokai
let g:rehash256 = 1

"NERDTREE
map <F6> :NERDTreeToggle<cr>r<esc>
imap <F6> <esc>:NERDTreeToggle<cr>ri
let g:NERDTreeWinPos = "left"

"TAGBAR
map <F7> :Tagbar<cr>r<esc>
imap <F7> <esc> :Tagbar<cr>ri
let g:tagbar_left = 0

"SYNASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_loc_list_height=5
let g:syntastic_quiet_messages = { "type": "style" }

"AIRLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"JEDI
let g:jedi#popup_select_first = 1
"let g:jedi#force_py_version = 3
let g:jedi#auto_initialization = 1


