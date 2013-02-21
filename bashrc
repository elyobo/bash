# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Reliably determine the current directory of this file
pushd . >/dev/null
DIR=$(readlink "$0")
if [ ! -z "$DIR" ]; then
    cd $(dirname "$0");
else
    DIR="$0"
fi
ROOT=$(cd $(dirname "$DIR"); pwd)
popd >/dev/null

# Always use vim
export EDITOR=$(which vim)

# Force 256 colours
export TERM=xterm-256color

# Load subsidiary configuration files
for CONF in ~/.bash/conf.d/*.sh;
do
    . $CONF
done
