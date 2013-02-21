# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Determine the root of the .bash config, used in conf.d/*
DOTBASHROOT=$(dirname $(readlink -f "$BASH_SOURCE"))

# Load subsidiary configuration files
for CONFFILE in $DOTBASHROOT/conf.d/*.sh;
do
    source $CONFFILE
done
