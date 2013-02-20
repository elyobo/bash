# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Always use vim
export EDITOR=$(which vim)

# Load subsidiary configuration files
for CONF in ~/.bash/conf.d/*.sh;
do
    . $CONF
done
