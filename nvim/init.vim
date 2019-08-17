 "dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/ueki/.cache/dein/./repos/github.com/Shougo/dein.vim
set runtimepath+=/usr/local/Cellar/neovim/0.3.1/share/nvim/runtime/

"dein.vimインストール時に指定したディレクトリ
let s:dein_dir = expand('~/.cache/dein')

"dein.vim　の場所
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

    " dein.vimが存在していない場合はgithubからclone
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif


"File setting
if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

  " Let dein manage dein
  " Required:
  call dein#add(s:dein_repo_dir)
  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  "  let s:toml_dir  = $HOME . '/dotfiles/nvim/toml/'
  let s:toml_dir = expand('~/dotfiles/nvim/toml/')
  call dein#load_toml(s:toml_dir . 'dein.toml')
  call dein#load_toml(s:toml_dir . 'dein_color.toml')
  "call dein#load_toml(s:toml_dir. 'dein_completion.toml')
  call dein#load_toml(s:toml_dir . 'dein_python.toml')

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
source ~/dotfiles/nvim/setting.rc.vim
" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
source ~/dotfiles/nvim/setting.rc.vim
