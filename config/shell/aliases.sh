#########
# Aliases
#########

# Shortcuts and bonus options
alias ls='ls --color=auto'
alias lsa='ls -la --color=auto'
alias grep='grep --color=auto'
alias free='free -h -l -t'
alias c='clear'
alias ap='ansible-playbook'
alias tf='terraform'
alias q='exit'

# pacman aliases
alias syu='sudo pacman -Syu'
alias s='sudo pacman -S'

# git shortcuts
alias g='git'
alias ga='git add ./'
alias gco='git co'
alias gcom='git commit'
alias gcomm='git commit -m'
alias gst='git st'
alias gp='git push'
alias loga='git loga'
alias commit='git commit'
alias push='git push'
alias save='git save'

# Command redirection
alias vim='nvim'

# Mistake correction
alias ope='sudo $(fc -ln -1)'
alias :wq='exit'
alias :q='exit'
alias cd..='cd ..'
alias ivm='vim'
alias sl='ls'
# Safeties
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

