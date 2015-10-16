# welcome message
# echo ""
# echo "   (╯°□°）╯  ┻━┻"
# echo ""

# useful ls aliases
alias ls="ls -GCF"
alias la="ls -al"

# useful git aliases
alias git-s="git status"
alias git-b="git branch"
alias git-a="git add"
alias git-l="git log --oneline --decorate"
alias git-la="git log"
alias git-co="git checkout"
alias git-c="git commit"
alias git-update="git checkout master && git fetch -p && git pull --ff-only && git branch --merged"

# useful directory aliases
alias cdbb="cd /Users/`whoami`/Documents/source/bitbucket"
alias cdgh="cd /Users/`whoami`/Documents/source/github"

# replacement for $ prompt with colors
export PS1="\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\W\[\e[m\] \[\e[0;32m\]$\[\e[m\] "
