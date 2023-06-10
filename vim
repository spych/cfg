set shiftwidth=4                            "set widthspace to 4
set tabstop=4                               "set widthspace to 4
set expandtab                               "replace tab with space
set ignorecase                              "ignore case sensitivity during search
set showmode                                "show which mode you are on
set hlsearch                                "highlighting search
set syntax=on

set noswapfile                              "turn off swap files
nnoremap <C-I> i <ESC>r                     "set ctrl+i to insert a single character
inoremap jk <esc>                           "set <ESC> to replace jk  
nmap <C-N> : set invnumber<CR>              "set ctrl+n to show line number
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-Right> :tabnex<CR>
nnoremap <C-k> :tabnex<CR>

set path+=**                               

set clipboard=unnamed
 
