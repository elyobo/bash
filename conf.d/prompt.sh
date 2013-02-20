export GITAWAREPROMPT=~/.bash/modules/git-aware-prompt
source $GITAWAREPROMPT/main.sh

# Configure prompts
export PS1="\u@\h:\w\[$txtcyn\]\$git_branch\[$txtylw\]\$git_dirty\[$txtrst\]\$ "
export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\]:\w\$ "

# parse_git_branch() {
#   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
# }
# PS1='\u@\h:\w$(parse_git_branch)$ '
