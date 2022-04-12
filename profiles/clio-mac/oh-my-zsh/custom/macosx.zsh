export PATH="${PATH}:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="${PATH}:${HOME}/Library/Python/3.8/bin"
export DOTBOT_PROFILE_CLIO_MAC=1

alias cdc="cd ${HOME}/Documents/Projects/clio"
alias cdp="cd ${HOME}/Documents/Projects/personal"

# Do dev tool related things if it is installed
if command -v dev &>/dev/null; then
  eval "$(dev _hook)"
  # Use the multi architecture peng container
  alias dev='PENG_IMAGE=peng-multi:latest /usr/local/bin/dev'
fi

# Enable kubectl auto-completion
if command -v kubectl &>/dev/null; then
  source <(kubectl completion zsh)
fi

