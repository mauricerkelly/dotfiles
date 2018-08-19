alias g='hub'
if is_mac; then
  alias git='hub'
fi
alias ga='git add'
alias gf='git fetch'
alias gsh='gitsh'
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gmm='git merge master'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"

if [[ -n $ZSH_VERSION ]]; then
  if is_mac; then
    compdef hub='git'
  fi
  compdef g='git'
fi
