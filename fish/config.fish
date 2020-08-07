# Abbreviations
source $HOME/.config/fish/abbr.fish

# Functions
source $HOME/.config/fish/functions.fish

# Read env secrets (Must be git-ignored)
if test -e "$XDG_CONFIG_HOME/env/env.fish"
  source "$XDG_CONFIG_HOME/env/env.fish"
end

if status is-interactive
  cd $HOME
end

# Bootstrap `fisher` installation if missing
if not functions -q fisher
  set -q XDG_CONFIG_HOME
  or set XDG_CONFIG_HOME ~/.config
  curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
  fish -c fisher
end

# Bootstrap `omf` installation if missing
if not functions -q omf
  curl -L https://get.oh-my.fish | fish
end

# Adds asdf manager
source ~/.asdf/asdf.fish

# Enables Starship Theme
starship init fish | source
