 # Set up the prompt
[ -f ~/dotfiles/zsh/.env_depend_paths.rc ] && source ~/dotfiles/zsh/.env_depend_paths.rc
[ -f ~/.zplug/init.zsh ] && source ~/.zplug/init.zsh

export EDITORP=vim
export LANG=ja_JP.UTF-8

[ -f ~/dotfiles/zsh/zplugs.rc ] && source ~/dotfiles/zsh/zplugs.rc
[ -f ~/dotfiles/zsh/aliases.rc ] && source ~/dotfiles/zsh/aliases.rc


setopt auto_cd
setopt auto_pushd
setopt correct
setopt sharehistory

bindkey -v

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors "${LS_COLORS}"
#何も入力されていないときのTABでTABが挿入されるのを抑制
zstyle ':completion:*' insert-tab false
#補完でカラーを使用する


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[  -f ~/dotfiles/zsh/.env_depend_setting.rc ] && source ~/dotfiles/zsh/.env_depend_setting.rc
