# Power related commands
alias shutdown="sudo shutdown -P now"
alias reboot="sudo shutdown -r now"

# general commands
alias ls='ls -la --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias tree='pstree -p'
alias s='sudo'
alias linuxversion='cat /etc/os-release'
alias c='clear'
alias myip="curl http://ipecho.net/plain; echo"
alias nis="npm install --save "
alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo '
alias df="df -h"
alias root="sudo su"
alias cw="code .vscode/project.code-workspace"

# Git commands
alias gst='git status'
alias push='git push'
alias pull='git pull'
alias config='/usr/bin/git --git-dir=/$HOME/.cfg/ --work-tree=/$HOME'
alias cst='config status'

# Terraform
alias tf='terraform'
