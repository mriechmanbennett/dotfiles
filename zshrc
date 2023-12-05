# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/matt/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %F{red}%b%F{white}'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT=$'%F{yellow}%n%F{white}@%F{cyan}%m %F{white}in %F{magenta}%~%F{white}\n>'
RPROMPT=\$vcs_info_msg_0_

#########
# Aliases
#########

# Shortcuts and bonus options
alias ls='ls --color=auto'
alias lsa='ls -la --color=auto'
alias grep='grep --color=auto'
alias free='free -h -l -t'
alias c='clear'


# Mistake correction
alias ope='sudo $(fc -ln -1)'
alias :wq='exit'
alias cd..='cd ..'

# Safeties
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

###############
# $PATH updates
###############
export PATH=$PATH:/home/matt/.local/bin
