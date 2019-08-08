
export TERM="xterm-256color"
# Lines configured by zsh-newuser-install
export ZPLUG_HOME=/usr/local/opt/zplug
#export XDG_CONFIG_HOME=~/.config
export XDG_CONFIG_HOME=$HOME/dotfiles
source $ZPLUG_HOME/init.zsh
#上のコマンドをオンにするとtreeが勝手に実行されちゃう
autoload -U promptinit; promptinit
# プロンプトを変更
prompt pure
PURE_PROMPT_SYMBOL=">>>"

#ZPLUG
#zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug "zsh-users/zsh-syntax-highlighting", defer:2


#"powerlineの設定" 
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir) #vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

# 未インストール項目をインストールする
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# コマンドをリンクして、PATH に追加し、プラグインは読み込む
#zplug load --verbose
zplug load

export EDITORP=vim #エディタをvimに設定
export LANG=ja_JP.UTF-8 #文字コードをUTF-8に設定

#エイリアス
alias vz='nvim ~/.zshrc'
alias v='nvim'
alias vi='nvim'
alias py="python"
alias rm='rm -i'
alias mv='mv -i'
#cdの後にlsを実行
chpwd() { ls -ltrG  }

setopt correct
VIM=/usr/local/Cellar/neovim/0.3.5/share/nvim
export VIM

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
#for c++
export PATH=$PATH:/usr/local/bin

# alias for ssh
alias athena_mount="sshfs ueki.k@192.168.1.102:/home/ueki.k/ ~/athena/"
alias athena_unmount="umount -f ~/athena/"

# path to cpp lsp
export PATH=$PATH:~/cquery/build/system/bin
export PATH=$PATH:~/cquery/build
export PATH=$PATH:~/cquery/build/system

