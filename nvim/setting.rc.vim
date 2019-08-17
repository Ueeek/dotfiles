"setting
set termguicolors
set t_Co=256
set number
"編注のファイルが変更したら自動で読み直す
set autoread
"現在の行を強調
set cursorline
"かっこ入力時に対応するかっこを表示
set showmatch
set matchtime=1

"clip board
set clipboard+=unnamedplus


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

" keymapping
" 入力モード中に素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermfg=none
nnoremap <silent><Left> :bp<CR>
nnoremap <silent><Right> :bn<CR>
nnoremap <silent><Down> :bp<CR>
nnoremap <silent><Up> :bn<CR>
"--------------------
"color scheeme
"--------------------
set background=light
colorscheme PaperColor
"set background=dark
"colorscheme solarized8_high
"colorscheme spring-night 
"colorscheme lucario
"colorscheme blayu

"------------------
"   airline theme
"   (also written in dein.toml,but this file is prior)
"
"------------------
let g:airline_theme = 'papercolor'
"let g:airline_theme = 'spring_night'



"nerdTreeをCtrl eで開けるように
nnoremap <silent><C-e> :NERDTreeToggle<CR>
nnoremap <silent><C-i> :IndentLinesToggle<CR>
