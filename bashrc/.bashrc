## Custom configs ##

# clean, monochrome prompt: [folder] >
PS1='\[\e[1;37m\][\[\e[0m\]\W\[\e[1;37m\]] > \[\e[0m\]'
#PS1='\[\e[7;37m\] \W \[\e[0m\] \[\e[1;30m\]\[\e[0m\] '
clear
rxfetch

#environment
[ -d ~/Desktop/scripts ] && PATH=$PATH:~/Desktop/scripts
[ -f ~/.viminfo ] && rm ~/.viminfo
export BAT_THEME="ansi"

#alias
alias rm='rm -i'
alias tree='tree --du -sh'
alias dots='cd $HOME/GitHub/dotfiles'
alias trees='tree --du -sha'
alias grep='grep --color=always'
alias gcc='gcc -Wall -Wextra -Werror'
alias ls='ls --group-directories-first'
alias ll='ls -lh --group-directories-first'
alias lla='ls -lah --group-directories-first'
