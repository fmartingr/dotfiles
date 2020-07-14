#!/bin/bash

REMOTE=git@github.com:fmartingr/dotfiles.git

cd

if [ ! -d ~/.ssh ]; then
	echo "ERROR! There's no ssh key setup?"
	exit 1
fi

# Init dotfiles
if [ ! -d .git ]; then
	git init
fi
if [ "$(git remote -v)" == "" ]; then
	git remote add origin $REMOTE
fi

git fetch
git checkout -f master

# Install requirements
sudo pacman -Syy ansible yay --noconfirm

# Apply dotfiles
~/.dotfiles/bin/dotfiles apply

echo "Finished!"