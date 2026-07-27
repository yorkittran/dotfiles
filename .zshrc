
export ZSH="$HOME/.oh-my-zsh"

plugins=(
  autoupdate
  git
)


# PATHs
export PATH="/usr/local/sbin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$PATH
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="$HOME/.local/share/mise/shims:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/Users/anh.tt/.bun/bin:$PATH"

# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';

export DOTENV_RUNTIME=local
export HOMEBREW_PREFIX="/opt/homebrew"


# aliases
alias zshconfig="zed ~/.zshrc"


# Alias projects

# eliminates duplicates in *paths
typeset -gU cdpath fpath path

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"
eval "$($HOMEBREW_PREFIX/bin/mise activate zsh)"
