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
zstyle ':vcs_info:git:*' formats '%fon branch %F{9}%b%f'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT=$'%F{9}%n%f@%F{5}%m %fin %F{11}%~%f\n>'
#PROMPT=$'%n@%m in %~\n>'
RPROMPT=\$vcs_info_msg_0_
#END
#######################
# /Prompt configuration
#######################


# Source shell aliases
source ~/.config/shell/aliases.sh

# $PATH updates
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.local/bin/scripts
export PATH=$PATH:$HOME/.dotnet/tools

# Environmental variables
export DOTNET_CLI_TELEMETRY_OPTOUT=1



