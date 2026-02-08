# Source and set color scheme
source ~/.config/zsh/plugins/gruvbox-zsh/gruvbox.zsh

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

######################
# Prompt configuration
######################
#: <<'END'
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{7}on branch %F{9}%b%F{15}'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT=$'%F{1}%n%F{15}@%F{5}%m %F{15}in %F{10}%~%F{15}\n>'
#PROMPT=$'%n@%m in %~\n>'
RPROMPT=\$vcs_info_msg_0_
#END
#######################
# /Prompt configuration
#######################



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

# Command redirection
alias vim='nvim'

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
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.local/bin/scripts
export PATH=$PATH:$HOME/.dotnet/tools

# Environmental variables
export DOTNET_CLI_TELEMETRY_OPTOUT=1



