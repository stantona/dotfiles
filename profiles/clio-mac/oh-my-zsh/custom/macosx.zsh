export PATH="${PATH}:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="${PATH}:${HOME}/Library/Python/3.8/bin"
# Support psql (client postgresql, see: https://stackoverflow.com/questions/44654216/correct-way-to-install-psql-without-full-postgres-on-macos)
export PATH="${PATH}:/opt/homebrew/opt/libpq/bin"
export DOTBOT_PROFILE_CLIO_MAC=1

alias cdc="cd ${HOME}/Documents/Projects/clio"
alias cdp="cd ${HOME}/Documents/Projects/personal"
alias al="saml2aws login --skip-prompt"

open-prs () {
  local repo="${1:-}"

  if [[ -z "${repo}" ]]; then
    gh search prs --state=open --author "@me" --json url | jq --raw-output '.[] | .url'
  else
    gh search prs --repo "${repo}" --state=open --author "@me" --json url | jq --raw-output '.[] | .url'
  fi
}

# Enable kubectl auto-completion
if command -v kubectl &>/dev/null; then
  source <(kubectl completion zsh)
  alias k=kubectl
fi
