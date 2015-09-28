""""""""""""""""""""""""""""""""""""""""
"       my own setting                 "
"                                      "
""""""""""""""""""""""""""""""""""""""""
set history=700
filetype plugin on
filetype indent on
set autoread
set wildmenu
set ruler
set cmdheight=2
colorscheme desert
"set backspace=eol,start,indent
"set whichwrap+=<,>,h,j
set autoindent
set shiftwidth=4
set tabstop=4
set nu
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
syntax enable
colorscheme desert
set background=dark

" encoding
set encoding=utf8
set fileencodings=utf8,gb18030,gbk,gb2312
set ffs=unix,dos,mac
set termencoding=utf-8

set nobackup
set nowb

""""""""""""""""""""""""""""
"       key map
"
""""""""""""""""""""""""""""
map <F2> :w<CR>
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
"map <F4> :set paste<CR>
"map <F5> :set nopaste<CR>
map <F8> :sh<CR>
map <F12> :q<CR>
nmap hl :nohl<CR>

""""""""""""""""""""""""""""""""
" for plugin management:pathogen
""""""""""""""""""""""""""""""""
execute pathogen#infect()

""""""""""""""""""""""""""""""""
" for winManager
""""""""""""""""""""""""""""""""
let g:winManagerWindowLayout = "FileExplorer|FileExplorer"
nmap <silent> <F7> :WMToggle<cr>

""""""""""""""""""""""""""""""
" showmarks setting
""""""""""""""""""""""""""""""
" Enable ShowMarks
let showmarks_enable = 1
" Show which marks
let showmarks_include ="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
" Ignore help, quickfix, non-modifiable buffers
let showmarks_ignore_type = "hqm"
" Hilight lower & upper marks
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1 

" For showmarks plugin
hi ShowMarksHLl ctermbg=Yellow   ctermfg=Black  guibg=#FFDB72    guifg=Black
hi ShowMarksHLu ctermbg=Magenta  ctermfg=Black  guibg=#FFB3FF    guifg=Black

""""""""""""""""""""""""""""""
"    for airline
"
""""""""""""""""""""""""""""""
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_exclude_filename = []
let g:Powerline_symbols='fancy'
let g:airline_powerline_fonts=0
let g:bufferline_echo=0
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
set laststatus=2
set t_Co=256
" file buffers tabline
let g:airline#extensions#tabline#enabled = 1
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>

"powerline
"set guifont=PowerlineSymbols\ for\ Powerline
"set nocompatible
"set t_Co=256
"let g:Powerline_symbols = 'fancy'

let loaded_matchit = 0

" for gundo
nnoremap <F4> :GundoToggle<CR>
let g:gundo_width = 60
let g:gundo_right = 1
let g:gundo_preview_height = 15

" for tabular
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
