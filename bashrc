# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Reliably determine the current directory of this file, ignoring symlink
pushd . >/dev/null
DIR=$(readlink -f "$0")
if [ ! -z "$DIR" ]; then
    cd $(dirname "$0");
else
    DIR="$0"
fi
DOTBASHROOT=$(cd $(dirname "$DIR"); pwd)
popd >/dev/null

# Load subsidiary configuration files
for CONFFILE in $DOTBASHROOT/conf.d/*.sh;
do
    source $CONFFILE
done
