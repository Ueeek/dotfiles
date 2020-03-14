"set shell=/usr/bin/zsh
if &compatible
    set nocompatible               " Be iMproved
endif

"#Recho $PATH
let s:dein_dir= expand('~/.cache/dein')
let s:dein_repo_dir= s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let s:toml_dir = expand('~/dotfiles/nvim/toml/')

if &runtimepath !~# '/dein.vim'
    if !isdirectory(s:dein_repo_dir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
    endif
    execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    " Let dein manage dein
    " Required:
    call dein#add(s:dein_repo_dir)


    " You can specify revision/branch/tag.
    call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })
    call dein#load_toml(s:toml_dir . 'dein.toml')
    call dein#load_toml(s:toml_dir . 'dein_color.toml',{'lazy':0})
    call dein#load_toml(s:toml_dir . 'dein_lazy.toml',{'lazy':1})
    call dein#load_toml(s:toml_dir . 'dein_python.toml',{'lazy':1})
    "call dein#load_toml(s:toml_dir . 'dein_react.toml',{'lazy':1})
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
