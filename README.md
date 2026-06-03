# 🚀 My Linux Setup & Configs

A collection of my Linux dotfiles, tweaks, and personal configurations.

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

You can remove the folder of applications you don't use before running stow to preventing it from symlinking unneeded configs.

## Why I Made This

* Faster Linux reinstalls and distro hops
* Faster setup on new computers
* Consistent configs across systems
* A backup of all my personal tweaks


<div align="center">

**⭐ Star this repo if you find it helpful for managing your Linux configurations!**

Made with ❤️ by Papitas30

</div>

