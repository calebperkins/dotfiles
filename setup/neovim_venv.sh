# Declare a base path for both virtual environments
venv="${XDG_CACHE_HOME:-$HOME/.cache}/nvim/venv"

"$venv/bin/pip" install -U neovim python-language-server
