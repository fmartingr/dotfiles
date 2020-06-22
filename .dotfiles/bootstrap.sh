#!/bin/bash -xe
# Base install script for Arch Linux computers
# Run before any playbook since this installs
# dependencies required by the playbooks themselves
# (including ansible!)

sudo pacman -Syy ansible yay --noconfirm

# Apply dotfiles
cd
~/.dotfiles/bin/dotfiles apply
