# Open zshrc in VS Code
alias edit="code ~/.zshrc"

# Kill server running on this port
alias kill8000="sudo lsof -t -i tcp:8000 | xargs kill -9"
alias kill3000="sudo lsof -t -i tcp:3000 | xargs kill -9"

alias seed="./manage.py seed"

function wandern() {
  cd ~/code/wandern
  parallel -j 2 --linebuffer --tagstring '\033[3{#}m[{#}]\033[0m' ::: '' '' '' 'cd frontend && yarn start' '' 'cd api && python3 manage.py runserver'
}
