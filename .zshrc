
export TERM="xterm-256color"
# Lines configured by zsh-newuser-install
export ZPLUG_HOME=/usr/local/opt/zplug
#export XDG_CONFIG_HOME=~/.config
export XDG_CONFIG_HOME=$HOME/dotfiles
source $ZPLUG_HOME/init.zsh
#上のコマンドをオンにするとtreeが勝手に実行されちゃう
autoload -U promptinit; promptinit
# プロンプトを変更
prompt adam2
PURE_PROMPT_SYMBOL=">>>"

#########################
#   zplug         #
#########################
#zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions", defer:2



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

#########################
#   zstyle         #
#########################
#大文字、小文字を区別せず補完する
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors "${LS_COLORS}"
#何も入力されていないときのTABでTABが挿入されるのを抑制
zstyle ':completion:*' insert-tab false
#補完でカラーを使用する
##autoload colors
# 名前で色を付けるようにする


#########################
#   set opt        #
#########################
autoload colors
colors
# cdを使わずにディレクトリを移動できる
setopt auto_cd
# "cd -"の段階でTabを押すと、ディレクトリの履歴が見れる
setopt auto_pushd
# コマンドの打ち間違いを指摘してくれる
setopt correct
# # LS_COLORSを設定しておく
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors "${LS_COLORS}"
#何も入力されていないときのTABでTABが挿入されるのを抑制
zstyle ':completion:*' insert-tab false


export EDITORP=vim #エディタをvimに設定
export LANG=ja_JP.UTF-8 #文字コードをUTF-8に設定

#########################
#   エイリアス          #
#########################
alias vz='nvim ~/.zshrc'
alias v='nvim'
alias vi='nvim'
alias py="python"
alias rm='rm -i'
alias mv='mv -i'
alias tx="tmux"
# alias for ssh
alias athena_mount="sshfs ueki.k@192.168.1.102:/home/ueki.k/ ~/athena/"
alias athena_unmount="umount -f ~/athena/"
alias athena_ssh="ssh ueki.k@192.168.1.102"
#cdの後にlsを実行
chpwd() { ls -ltrG  }

VIM=/usr/local/Cellar/neovim/0.3.5/share/nvim
export VIM

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
#for c++
export PATH=$PATH:/usr/local/bin
# path to cpp lsp
export PATH=$PATH:~/cquery/build/system/bin
export PATH=$PATH:~/cquery/build
export PATH=$PATH:~/cquery/build/system

