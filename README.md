# dotfiles

## content ( setting files for
* zsh
* tmux
* nvim

## setup
* run setup.sh to make symbolic to your $HOME
* you should install other modules (like nvim, brew,python...) and write config of them by yourself
  * (TODO) make setting up more automatic.

## environment dependents setting
* write in them below.
  * zsh/.env_depend_paths.rc
    * it is read at the begging of .zshrc. path should be written in this.
  * zsh/.env_depend_setting.rc
    * it is read at the end of .zshrc. key bind or alias should be written in this file.
