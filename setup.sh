DOT_FILES=(.zshrc .zsh-history .zshenv .zsh-update .tmux.conf .gitconfig)
#symbolic
for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
