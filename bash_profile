# useful ls aliases
export CLICOLOR=1
alias ls="ls -CF"
alias la="ls -al"

# share colors between macOS and Linux/`tree`
# specifically highlight dirs, symlinks, and executables
export LSCOLORS=CxFxxxxxBxxxxxxxxxxxxx
export LS_COLORS='di=1;32:ln=1;35:so=0:pi=0:ex=1;31:bd=0:cd=0:su=0:sg=0:tw=0:ow=0'

# replacement for $ prompt with colors
export PS1="\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\W\[\e[m\] \[\e[0;32m\]$\[\e[m\] "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# lt command can leverage `tree` to browse faster
# simply pass a number as first arg to change depth
lt() {
  pwd
  level=$1
  # default to 1 if not set
  level=${level:-1}
  tree -L $level .
}

# configure fzf to open `vi` on enter, and show preview with `cat`
export FZF_DEFAULT_OPTS="--bind 'enter:execute(vim {})' --preview 'cat {}'"
