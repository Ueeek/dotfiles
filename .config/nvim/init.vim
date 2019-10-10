 "plugins exists in .cache/dein/
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
 set runtimepath+=/Users/ueki/.cache/dein/./repos/github.com/Shougo/dein.vim

set runtimepath+=/usr/local/Cellar/neovim/0.3.1/share/nvim/runtime/

if dein#load_state('/Users/ueki/.cache/dein')
  call dein#begin('/Users/ueki/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/ueki/.cache/dein/./repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  call dein#load_toml('/Users/ueki/dotfiles/nvim/dein.toml',{'lazy':0})
  call dein#load_toml('/Users/ueki/dotfiles/nvim/dein_python.toml',{'lazy':1})
  call dein#load_toml('/Users/ueki/dotfiles/nvim/dein_lazy.toml',{'lazy':1})
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"End dein Scripts-------------------------
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

" 入力モード中に素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>



autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermfg=none
set background=dark
"colorscheme solarized8_high
colorscheme spring-night 
"colorscheme blayu
"indent"
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent
set autoindent
"nerdTreeをCtrl eで開けるように
nnoremap <silent><C-e> :NERDTreeToggle<CR>
nnoremap <silent><C-i> :IndentLinesToggle<CR>
