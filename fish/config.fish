export PATH="/Users/simon_adcock/workspace/feria/bin:/Library/Frameworks/Python.framework/Versions/Current/bin:$PATH"

alias gs="git status"
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias g="git"
alias ll="ls -al"
alias churn="git log --since='90 days ago' --pretty=format:'' --name-only | grep '[^\s]' | sort | uniq -c | sort -nr | head -10"
alias churn-js="git log --since='90 days ago' --pretty=format:'' --name-only | grep '.js\$' | sort | uniq -c | sort -nr | head -10"
alias creds="feria --access s3-read cmsFronts ; feria frontend"

# set default node version to latest installed stable release
nvm use --lts

