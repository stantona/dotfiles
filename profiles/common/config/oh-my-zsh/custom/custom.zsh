# Ensure 'fzf' also finds hidden files
if command -v fzf &>/dev/null; then
  export FZF_DEFAULT_COMMAND='find .'
fi
