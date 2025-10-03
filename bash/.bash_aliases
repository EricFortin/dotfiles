
# dir listing
if command -v eza > /dev/null 2>&1; then
  # Use eza for enhanced navigation
  alias l='eza --color=always --color-scale=all --color-scale-mode=gradient --icons=always --group-directories-first'
  alias ll='eza --color=always --color-scale=all --color-scale-mode=gradient --icons=always --group-directories-first -l --git -h'
  alias la='eza --color=always --color-scale=all --color-scale-mode=gradient --icons=always --group-directories-first -a'
  alias lla='eza --color=always --color-scale=all --color-scale-mode=gradient --icons=always --group-directories-first -a -l --git -h'
else
  # Fallbacl to standard ls aliases
  alias l='ls -CF'
  alias ll='ls -lhF'
  alias la='ls -lAhF'
  alias lla='la'
fi


# Directory traversal
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias h='history'

alias mkdir='mkdir -p'

alias resrc='source ~/.bashrc'

alias cls=clear

alias apt-get='sudo apt-get'

alias envgrep='env | grep'
alias psgrep='ps -elf | grep'
alias hgrep='history | grep'

# Docker
alias compose='docker-compose'

# Kubernetes
alias k='kubectl'
alias kctx='kubectx'
alias kns='kubens'
