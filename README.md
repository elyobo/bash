# Intro

This provides a more modular bash configuration, by loading up any config files
defined in conf.d/ and providing a staging area for submodules (modules/) and for
other utilities (utils/).

The current config includes

* bashmarks - git://github.com/huyng/bashmarks.git
* solarized colours - https://github.com/sigurdga/gnome-terminal-colors-solarized.git
* git aware prompt - https://github.com/jimeh/git-aware-prompt

# Installation

```
# Go home
cd ~
# Backup old .bashrc
mv .bashrc .bashrc-old
# Install new config
git clone https://github.com/elyobo/bash.git .bash 
ln -s ~/.bash/bashrc .bashrc
cd .bash
git submodule update --init

# Done!

