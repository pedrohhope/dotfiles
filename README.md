# Dotfiles Setup Guide

Welcome! This guide will help you set up your environment using these dotfiles. Follow the steps below to clone the repository, stow the configuration files, and install the required fonts and applications.

1. Clone the Repository

First, clone this repository to your home directory:

```sh
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

2. Install GNU Stow
```sh
sudo pacman -S stow
```
OR
```sh
yay -S stow
```
3. Stow the Dotfiles

To symlink the configuration files to your home directory, use stow for each technology you want to configure. For example:

```sh
stow waybar
stow hyprlock
stow hyprland
stow nvim
stow zsh
```


Repeat for any other directories you want to stow.

4. Install JetBrains Mono Nerd Font

Download and install the JetBrains Mono Nerd Font:

### Create fonts directory if it doesn't exist
```sh
mkdir -p ~/.local/share/fonts
```
### Download the font (replace with the latest version if needed)
```sh
wget -O JetBrainsMono.zip "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip"
```

### Unzip and refresh font cache
```sh
unzip JetBrainsMono.zip -d ~/.local/share/fonts
fc-cache -fv
```

5. Install Required Applications

Install the main applications used in this configuration. For example:

Waybar, Hyprland, Hyprlock, etc.
Use your package manager, e.g.:
```sh
yay -S waybar hyprland hyprlock
```
6. (Optional) Configure Additional Applications

Zen Browser:

```sh
yay -S zen-browser-bin
```

Spotify:
```sh
yay -S spotify-launcher
```

Vesktop:
```sh
yay -S vesktop
```

Figma Font Helper:
Download and install from Figma’s official site.

7. Final Steps

After installing everything, restart your session or reload your configuration as needed. Enjoy your new setup!

For any issues or questions, please open an issue on this repository.
