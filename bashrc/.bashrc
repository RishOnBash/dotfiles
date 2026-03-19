## Custom configs ##

# Checks if rxfetch package exists, if not skip it
clear
command -v rxfetch >/dev/null 2>&1 && rxfetch

# PS1 Prompt
PS1='\[\e[1;37m\][\[\e[0m\]\W\[\e[1;37m\]] > \[\e[0m\]'
#PS1='\[\e[7;37m\] \W \[\e[0m\] \[\e[1;30m\]\[\e[0m\] '

# Environment
#[ -d ~/Desktop/scripts ] && PATH=$PATH:~/Desktop/scripts
[ -d ~/GitHub/bash-scripts ] && PATH=$PATH:~/GitHub/bash-scripts
[ -f ~/.viminfo ] && rm ~/.viminfo
export BAT_THEME="ansi"

# Shell alias
alias ..='cd ..'
alias rm='rm -i'
alias tree='tree --du -sh'
alias github='cd $HOME/GitHub'
alias dots='cd $HOME/GitHub/dotfiles'
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
    alias gpu='git push -u origin main'
    alias gcu='git clone -u origin main'
    alias gcum='git commit -m'
    alias gone='git log --oneline --graph --all'
    alias glog='git log --all --graph'
    alias gmain='git branch -M main'
else
    echo "> Git not installed!"
    echo "> Run: pkg install git"
fi
