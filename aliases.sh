alias edit="code ~/.zshrc"
alias python="python3 $@"
alias killdjango="sudo lsof -t -i tcp:8000 | xargs kill -9"

function run() {
  parallel -j 2 --linebuffer --tagstring '\033[3{#}m[{}]\033[0m' ::: '' '' '' 'cd map && yarn watch' '' 'python3 manage.py runserver'
}
