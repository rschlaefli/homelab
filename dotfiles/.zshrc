# ----- ALIASES -----
alias k=kubectl

# ----- PATH -----
export PATH="/Users/roland/Library/Python/3.9/bin:/opt/homebrew/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
