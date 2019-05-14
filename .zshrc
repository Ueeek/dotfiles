
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

zplug "zsh-users/zsh-syntax-highlighting", defer:2
#zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug "b4b4r07/enhancd", use:init.sh


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
zplug load --verbose

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

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH=$PATH:/usr/local/Cellar/i386-elf-binutils/2.30/bin
eval "$(pyenv init -)"
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages/

if which jenv > /dev/null; then
  # JENV_ROOTがemptyの場合、'${HOME}/.jenv'がrootと設定される
  export JENV_ROOT=/usr/local/Cellar/jenv
  eval "$(jenv init -)"
fi
#ここの数字を変えるとversionを帰れる -v 数字
export JAVA_HOME=$(/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home -v 10)
PATH=${JAVA_HOME}/bin:${PATH}
export TERM='xterm-256color'
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

