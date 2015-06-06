source /etc/bash_completion

AWS=$(which aws)
[ ! -z "$AWS" ] && complete -C aws_completer aws
