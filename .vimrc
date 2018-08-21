"
"                      ##
"                      ""
"         ##m  m##   ####     ####m##m   ##m####   m#####m
"          ##  ##      ##     ## ## ##   ##"      ##"    "
"          "#mm#"      ##     ## ## ##   ##       ##
"  ##       ####    mmm##mmm  ## ## ##   ##       "##mmmm#
"  ""        ""     """"""""  "" "" ""   ""         """""


syntax on
set t_Co=256
set title
set nu
set hidden
set mouse=a
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set	expandtab
set smartindent
set ttimeoutlen=50
set updatetime=40
set foldmethod=marker
let g:livepreview_previewer = 'mupdf'
colorscheme smyck
autocmd BufWritePre * %s/\s\+$//e
autocmd BufNewFile,BufRead *.tex :set spell
autocmd BufNewFile,BufRead *.md :set spell
command W w !sudo tee % > /dev/null
map q :q<CR>
map <Space> za
map <C-c> "+yy
nnoremap <C-L> :NERDTreeTabsToggle<CR>
nnoremap <C-T> :tabnew<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>


if has("autocmd")
    augroup templates
        autocmd BufNewfile *.sh 0r ~/.vim/templates/skel.sh
        autocmd BufNewfile *.py 0r ~/.vim/templates/skel.py
        autocmd BufNewfile *.c 0r ~/.vim/templates/skel.c
    augroup END
endif
