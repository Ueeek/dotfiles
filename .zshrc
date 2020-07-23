 # Set up the prompt
source ~/.zplug/init.zsh
source ~/dotfiles/.env_depend_paths.rc

export EDITORP=vim
export LANG=ja_JP.UTF-8

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions", defer:2
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

setopt auto_cd
setopt auto_pushd
setopt correct
setopt sharehistory

alias v="nvim"
alias py="python3"
alias mv="mv -i"
alias tx="tmux"
alias ta="tx a -t"
alias tn="tx new -s"
alias tls="tx ls"
alias tkil="tx kill-session -t"

vim-fzf-find() {
    local FILE=$(find ./ -path '*/\.*' -name .git -prune -o -type f -print 2> /dev/null | fzf +m)
    if [ -n "$FILE" ]; then
        v $FILE
    fi
}
alias vf=vim-fzf-find

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors "${LS_COLORS}"
#何も入力されていないときのTABでTABが挿入されるのを抑制
zstyle ':completion:*' insert-tab false
#補完でカラーを使用する

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
#source ~/.zplug/init.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
zplug load

source ~/dotfiles/.env_depend_setting.rc
bindkey -v
