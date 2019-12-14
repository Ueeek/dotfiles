source .private.rc
 # Set up the prompt
 autoload -Uz promptinit
 promptinit
 prompt adam2
 export EDITORP=vim
 export LANG=ja_JP.UTF-8

 source ~/.zplug/init.zsh
 zplug "zsh-users/zsh-syntax-highlighting", defer:2
 zplug "zsh-users/zsh-autosuggestions", defer:2
 zplug "romkatv/powerlevel10k, as:theme", depth:1
setopt auto_cd
setopt auto_pushd
setopt correct
#alias
alias v="vim"
alias py="python"
alias rm="rm -i"
alias mv="mv -i"
alias py="python"
alias tx="tmux"
chpwd() {ls -ltrG}

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors "${LS_COLORS}"
#何も入力されていないときのTABでTABが挿入されるのを抑制
zstyle ':completion:*' insert-tab false
#補完でカラーを使用する
setopt correct

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load --verbose
