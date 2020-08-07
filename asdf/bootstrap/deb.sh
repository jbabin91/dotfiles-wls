#!/bin/bash

if [[ ! $HOME/.asdf ]]; then
  sudo apt install curl git
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0-rc1
  mkdir -p ~/.config/fish/completions; and cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions
fi
