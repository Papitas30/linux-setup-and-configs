# 🚀 My Linux Setup & Configs

A collection of my Linux dotfiles, tweaks, and personal configurations.

## Reviews
Distributions I have tested: Q4OS, Garuda, Fedora 44, CachyOS  
**Q4OS**: ★★★☆☆ - A Debian-based distro with a unique Windows installer that lets you install it from inside Windows!  
**Garuda**: ★★★★☆ - An Arch-based distro that makes it easy to install Arch with good out of the box defaults.  
**Fedora 44**: ★★★★★ - A "semi-rolling" distro that gives you the latest software and updates while maintaining reliable stability.  
**CachyOS**: ★★★★★ - A performance and gaming focused Arch-based distro with aggresive optimizations and a user-friendly graphical installer. *CURRENT ONE I USE*

Shells I have used: Bash, Zsh, Fish  
**Bash**: ★★★★☆ - The default shell in most distros, its reliable but basic with no built in autocompletion.  
**Zsh**: ★★★★☆ - Okay out of the box, plugins are needed for better autocompletion and syntax highlighting. More work to setup compared to Fish. *CURRENT ONE I USE*  
**Fish**: ★★★★☆ - Amazing out of the box with built in auto completion, syntax highlighting and easy configuration, but its lack of POSIX compliance made me switch back to Zsh. (Bash commands and scripts won't work natively with Fish)

## 🚀 Getting Started

I recommend using GNU Stow to manage the dotfiles since it makes creating and maintaining symlinks simple.

### Requirements

* Git
* GNU Stow

Install Stow:

#### Debian / Ubuntu

```bash
sudo apt install stow
```

#### Arch Linux

```bash
sudo pacman -S stow
```

#### Fedora

```bash
sudo dnf install stow
```

## Installation

### 1. Clone the repository

```bash
git clone https://github.com/Papitas30/linux-setup-and-configs.git
cd linux-setup-and-configs
```

### 2. Deploy the configs

Run Stow on whichever directories you want to use.

### For example:

#### Home directory dotfiles

This symlinks files such as `.bashrc`, `.bash_profile`, into your home directory/

```bash
stow home
```

#### Application configs

This symlinks app-specific config files into your `~/.config` directory.

```bash
stow config
```

You can remove the folder of applications you don't use before running stow to prevent it from symlinking unneeded configs.

## Why I Made This

* Faster Linux reinstalls and distro hops
* Faster setup on new computers
* Consistent configs across systems
* A backup of all my personal tweaks


