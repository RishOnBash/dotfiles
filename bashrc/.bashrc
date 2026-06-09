## Custom configs ##

# Checks if txfetch exists, if not skip it
clear
command -v txfetch &>/dev/null && txfetch

# Shell options
shopt -s autocd
shopt -s cdspell
shopt -s extglob
shopt -s dirspell
shopt -s histappend
shopt -s histverify

# History options
HISTSIZE=20000
HISTFILESIZE=40000
HISTCONTROL=ignoreboth

# PS1 Prompt
PS1='\[\e[38;5;118m\][\[\e[0m\]\W\[\e[38;5;118m\]] > \[\e[0m\]'

# Environment
#[ -d ~/Desktop/scripts ] && PATH=$PATH:~/Desktop/scripts
[ -d ~/GitHub/bash-scripts ] && PATH=$PATH:~/GitHub/bash-scripts
[ -f ~/.viminfo ] && rm ~/.viminfo
export BAT_THEME="ansi"

# Shell alias
alias ..='cd ..'
alias rm='rm -i'
alias ckear='clear'
alias tree='tree --du -sh'
alias github='cd $HOME/GitHub'
alias dots='cd $HOME/GitHub/dotfiles'
alias scripts='cd $HOME/GitHub/bash-scripts'
alias trees='tree --du -sha'
alias grep='grep --color=always'
alias gcc='gcc -Wall -Wextra -Werror'
alias ls='ls --group-directories-first'
alias ll='ls -lh --group-directories-first'
alias lla='ls -lah --group-directories-first'

# Git alias
# Check if Git is installed
if command -v git > /dev/null 2>&1; then
    alias gs='git status'
    alias ga='git add'
    alias gp='git push'
    alias gc='git clone'
    alias gaa='git add .'
    alias gr='git restore'
    alias grs='git restore --staged'
    alias gpu='git push -u origin main'
    alias gpuf='git push origin main --force'
    alias gpufl='git push origin main --force-with-lease'
    alias gcu='git clone -u origin main'
    alias gcum='git commit -m'
    alias gcma='git commit -a -m'
    alias gone='git log --oneline --graph --all'
    alias glog='git log --all --graph'
    alias glogs='git log --stat'
    alias gmain='git branch -M main'
else
    echo "> Git not installed!"
    echo "> Run: pkg install git"
fi
