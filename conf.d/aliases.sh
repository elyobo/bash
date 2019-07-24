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

# Aws convenience
alias awsprod='aws --profile production'
alias awsdev='aws --profile development'

# SSH to the shared vagrant
alias gvagrant="pushd . &>/dev/null; cd ~/work/vagrant; vagrant ssh; popd &>/dev/null;"

alias rwphpcs="phpcs --standard=$HOME/.config/composer/vendor/ray-white/core-misc/tools/phpcs/raywhite.xml"

alias clipboard="xclip -selection clipboard"

alias headers="curl -s -D - -o /dev/null"
function dump() {
    curl -s -D - -H 'Accept: application/json' -H 'Content-Type: application/json' "$@" | colourise-curl.php
}

# docker utils

alias docker_clean_images='docker rmi $(docker images -a --filter=dangling=true -q)'
alias docker_clean_ps='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'
alias docker_purge='docker kill $(docker ps -q); docker_clean_ps; docker rmi $(docker images -a -q)'
