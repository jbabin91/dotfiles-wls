function a
  abbr --add $argv
end

# GIT
a g 'git'
a ga 'git add'
a gb 'git branch'
a gbd 'git branch -d'
a gbdd 'git branch -D'
a gbl 'git blame'
a gch 'git checkout'
a gchb 'git checkout -b'
a gc 'git commit -m'
a gcl 'git clone'
a gca 'git commit --amend -m'
a gcp 'git cherry-pick'
a gd 'git diff'
a gf 'git fetch'
a gl 'git log'
a gm 'git merge'
a gp 'git push'
a gpf 'git push --force-with-lease'
a gpl 'git pull'
a gr 'git remote'
a grb 'git rebase'
a gs 'git status'
a gst 'git stash'

# Ubuntu package manager
a au 'sudo apt update'
a auu 'sudo apt upgrade -y'
a ar 'sudo apt autoremove'
a ud 'au && auu && ar'

# misc
a c 'clear'

functions -e a
