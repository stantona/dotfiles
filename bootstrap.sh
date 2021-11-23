#!/bin/bash

set -euo pipefail

if [[ "${CODESPACE:-}" == 'true' ]]; then
  # Install Solargraph Ruby Language Server
  gem install solargraph
fi
