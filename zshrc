# Source and set theme
source ~/.config/zsh/plugins/gruvbox-zsh/gruvbox.zsh
: <<'END'
source ~/.config/zsh/themes/gruvbox-zsh/gruvbox.zsh-theme
ZSH_THEME="gruvbox"
SOLARIZED_THEME="dark"
END

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
zstyle ':vcs_info:git:*' formats 'on branch %F{9}%b%F{7}'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT=$'%F{9}%n%F{7}@%F{11}%m %F{7}in %F{6}%~%F{7}\n>'
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



