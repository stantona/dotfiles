export PATH="${PATH}:${HOME}/bin"
export PATH="${PATH}:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="${PATH}:${HOME}/Library/Python/3.8/bin"
export PATH="${PATH}:${HOME}/.cargo/bin"
export PATH="${PATH}:${HOME}/.local/bin"
# Support psql (client postgresql, see: https://stackoverflow.com/questions/44654216/correct-way-to-install-psql-without-full-postgres-on-macos)
export PATH="${PATH}:/opt/homebrew/opt/libpq/bin"
export PATH="${PATH}:/opt/homebrew/opt/dotnet@6/bin"
export DOTBOT_PROFILE_CLIO_MAC=1
export TG_LOG_DISABLE=true

export GOPATH="${HOME}/go"


alias cdc="cd ${HOME}/Documents/Projects/clio"
alias cdp="cd ${HOME}/Documents/Projects/personal"
alias al="okta-aws-cli login"


alias ghl="PAGER='' gh pr list --author '@me' --state open --json number,createdAt,title,url,mergeable -q '.[] | [.number, .createdAt, .url, .mergeable, .title] | @tsv'"
alias ghp="gh search prs --author '@me' --state open"
alias ghi="gh search issues --assignee '@me' --state open"

# For themes and plugins installed through Homebrew
fpath+=("$(brew --prefix)/share/zsh/site-functions")

autoload -U promptinit; promptinit
prompt pure
