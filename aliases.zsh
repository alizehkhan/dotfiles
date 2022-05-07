alias zshconfig=“open ~/.zshrc -a ‘Visual Studio Code’”
alias python=“python3 $@”
alias run=“python3 manage.py runserver”
alias ahoy-login="aws sso login --profile sso-eks-ahoy-basic && vault login -method=oidc"
