function sudo!!
  eval sudo $history[1]
end

# `shellswitch [bash|zsh|fish]`
function shellswitch
  chsh -s (brew --prefix)/bin/$argv
end
