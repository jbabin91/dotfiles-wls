# https://fishshell.com/docs/surrent/index.html

set fish_greeting

# Encironment variables - https://fishshell.com/docs/current/cmds/set.html
set -gx EDITOR 'nvim'
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx DOTFILES '$HOME/.dotfiles'
set -gx HOST_NAME (hostname)

# Read env secrets (Must be git-ignored)
if test -e "$XDG_CONFIG_HOME/env/env.fish"
  source "$XDG_CONFIG_HOME/env/env.fish"
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

if status is-interactive
  cd $HOME

  # Abbreviations
  source $XDG_CONFIG_HOME/fish/abbr.fish

  # Functions
  source $XDG_CONFIG_HOME/fish/functions.fish

  # Starship Theme
  starship init fish | source

  # Adds asdf manager
  source ~/.asdf/asdf.fish

  if test -e $DOTFILES/machines/$HOST_NAME/colors.fish
    source $DOTFILES/machines/$HOST_NAME/colors.fish
  end

  if test -e $DOTFILES/local/config.fish.local
    source $DOTFILES/local/config.fish.local
  end
end
