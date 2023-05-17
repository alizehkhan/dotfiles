alias python=python3

# Open zshrc in VS Code
alias edit="code ~/.zshrc"

# Kill server running on the port given
kill_port() {
    sudo lsof -t -i tcp:"$1" | xargs kill
}

# Wandern
alias seed="./manage.py seed"

wandern() {
  cd ~/code/wandern
  parallel -j 2 --linebuffer --tagstring '\033[3{#}m[{#}]\033[0m' ::: '' '' '' 'cd frontend && yarn start' '' 'cd api && python3 manage.py runserver'
}

# Git
alias gst="git status"
alias gc="git checkout"
alias gcm="git checkout main"
alias gl="git log --oneline --decorate --color"
alias commit="git add . && git commit -m"
alias pull="git pull"
alias push="git push"
alias force="git push --force"
alias pop="git stash pop"
alias stash="git stash -u"
