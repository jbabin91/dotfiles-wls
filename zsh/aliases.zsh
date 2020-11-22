#!/usr/bin/env bash

# `.aliases` is used to provide custom variables.
#
# This file is used as a part of `.shell_env`

# General UNIX
alias c='clear'
alias cp='cp -iv'
alias df='df -h'
alias du='du -h'
alias dud='du -d 1 -h'
alias duf='du -sh *'
alias mkdir='mkdir -pv'
alias mv='mv -iv'
alias path='echo -e ${PATH//:/\\n}'
alias pi='ping -Anc 5 1.1.1.1'
alias zr='source ~/.zshrc'
alias ze='e ~/.zshrc'
alias srm='srm -iv'

alias e='code-insiders'

# Edit dotfiles
alias edit='e ~/.dotfiles'

# Alias nvim to vi
alias v='nvim'

# Lazy Git
lg='lazygit'

# Lazy Docker
ld='lazydocker'

# Colorsls
alias ls='colorls --almost-all --sort-files --group-directories-first'
alias la='colorls --all --sort-files --group-directories-first'
alias ll='colorls --almost-all --sort-files --group-directories-first'
alias lgs='colorls --git-status --almost-all --sort-files --group-directories-first'

# Alias for directories
alias co='cd ~/Code'

# Moving around
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# Git Aliases
alias gl='git pull --prune'
alias glg="git log --graph --decorate --oneline --abbrev-commit"
alias glga="glg --all"
alias gp='git push origin HEAD'
alias gpa='git push origin --all'
alias gd='git diff'
alias gc='git commit -s'
alias gca='git commit -s -a'
alias gco='git checkout'
alias gb='git branch -v'
alias ga='git add'
alias gaa='git add -A'
alias gcm='git commit -s -m'
alias gcam='git commit -s -a -m'
alias gs='git status -sb'
alias gpr='gp && git pr'
alias glnext='git log --oneline $(git describe --tags --abbrev=0 @^)..@'

# zsh history cleanup
alias clear_history='echo "" > ~/.zsh_history & exec $shell -l'