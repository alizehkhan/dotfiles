alias python=python3

# Open zshrc in VS Code
alias edit="code ~/.zshrc"

# Kill server running on the port given
kill_port() {
    sudo lsof -t -i tcp:"$1" | xargs kill
}

function altamiga() {
  cd ~/code/altamiga/frontend &&
  parallel -j 2 -u ::: 'pnpm start --host 0.0.0.0' 'cd ../api && .venv/bin/python manage.py runserver'
}

function seed() {
  cd ~/code/altamiga/api &&
  .venv/bin/python manage.py seed $@ &&
  cd ../frontend
}

# Git
alias gst="git status"
alias gco="git checkout"
alias gcm="git checkout main"
alias log="git log --oneline --decorate --color"
alias commit="git add . && git commit -m"
alias pull="git pull"
alias push="git push"
alias force="git push --force"
alias pop="git stash pop"
alias stash="git stash -u"
alias sweep='git branch | grep -v "$(git branch --show-current)" | xargs git branch -d'
alias reset="git reset --soft HEAD^"
