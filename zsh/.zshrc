export ZSH=/home/tristan/.oh-my-zsh

ZSH_THEME="honukai"
HYPHEN_INSENSITIVE="true"

plugins=(sudo git common-aliases virtualenvwrapper systemd pip)

PATH="$HOME/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=fr_FR.UTF-8

export EDITOR='nvim'
export PROJECT_HOME="$HOME/programmation/"

# Compilation flags
export ARCHFLAGS="-arch x86_64 -j8"

#Need to be before .zshconf because of fct redifining
source /usr/share/doc/pkgfile/command-not-found.zsh
source $(which crossdev)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

setopt ksh_glob
setopt no_bare_glob_qual

for f in ~/.zshconf/* 
do
	source $f
done
