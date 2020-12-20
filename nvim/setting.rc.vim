set termguicolors
"set t_Co=256
set number
"編注のファイルが変更したら自動で読み直す
set autoread
"現在の行を強調
set cursorline
"かっこ入力時に対応するかっこを表示
set showmatch
set matchtime=1

"ctagsのためにいるらしい。
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis

set hidden

"clip board
set clipboard+=unnamedplus

"search
set ignorecase
set smartcase
set incsearch


"swapを作らない
set nowritebackup
set nobackup
set noswapfile
"indent"
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent
set autoindent

" key mapping
inoremap jj <ESC>
nnoremap <silent><Left> :bp<CR>
nnoremap <silent><Right> :bn<CR>
nnoremap <silent><Down> :bp<CR>
nnoremap <silent><Up> :bn<CR>
""" vim のwindowを<Ctrl-w> ,{h,l,j,k}で動かせるように
nnoremap <silent><C-w><C-k> <C-w>+ 
nnoremap <silent><C-w><C-j> <C-w>-
nnoremap <silent><C-w><C-l> <C-w>>
nnoremap <silent><C-w><C-h> <C-w><
"--------------------
"color scheeme
"--------------------
"set background=light
"colorscheme PaperColor
set background=dark
"colorscheme solarized8_high
"colorscheme spring-night
colorscheme lucario
"colorscheme blayu
"colorscheme miramare
"colorscheme minimalist
"------------------
"   airline theme
"   (also written in dein.toml,but this file is prior)
"
"------------------"
"let g:airline_theme = 'papercolor'
"let g:airline_theme = 'spring_night'
"let g:airline_theme='minimalist'
"let g:airline_theme="solarized"
let g:airline_theme = 'spring_night'
"let g:airline_theme='minimalist'
"let g:airline_theme="solarized"

set rtp+=~/vimdev

"tsxがfiletype=typescriptreactになるからtypescriptにする
autocmd bufnewfile,bufread *.tsx setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd bufnewfile,bufread *.jsx setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd bufnewfile,bufread *.tsx set filetype=typescript.tsx
autocmd bufnewfile,bufread *.jsx set filetype=javascript.jsx

