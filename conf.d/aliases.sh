# colour based aliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# SVN shortcuts
alias si='svn info'
alias se='svn pg svn:externals'
alias ss='svn status'

# Git shortcuts
alias gs='git st'
alias ga='git add'
alias gc='git commit --verbose'
alias gp='git push'
alias gd='git diff'
alias gb='git branch'
alias go='git checkout'

# Composer hacks
# Checks the status of all git based vendor repositories
alias vendorstatus='pushd . >/dev/null; cd $(git rev-parse --show-toplevel); if [ -d vendor ]; then echo; for dir in $(find vendor -maxdepth 3 -type d -name .git); do dir=$(dirname $dir); pushd . >/dev/null; cd "$dir"; status=$(git status -s); if [ ! -z "$status" ]; then echo "$dir"; git st; echo; fi; popd>/dev/null; done; fi; popd >/dev/null;'
alias gs="git st; vendorstatus"
