#!/bin/bash
#Restore stow packages
cd ~/dots/stow
for pkg in */; do
  stow -t $HOME "${pkg%/}"
done

#Restore pacman.conf
cp -f $HOME/dots/nonstow/pacman.conf /etc/pacman.conf

#Make Sober read symlink config file
flatpak override --user --filesystem=/home/diego/dots/stow/sober/.var/app/org.vinegarhq.Sober/config/sober/config.json org.vinegarhq.Sober

read -p "COPY PASTE CONTENTS OF ./dots/stow/sudoers to /etc/sudoers via 'EDITOR=micro visudo'"
