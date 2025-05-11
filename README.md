Okay, here's the revised documentation, specifically tailored for Arch Linux users with yay:

Dotfiles Setup Guide (Arch Linux with yay)

Welcome! This guide will help you set up your environment using these dotfiles on Arch Linux. Follow the steps below to clone the repository, stow the configuration files, and install the required fonts and applications.

1. Clone the Repository

First, clone this repository to your home directory:

git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles

2. Install GNU Stow

Install GNU Stow using pacman or yay:

sudo pacman -S stow


OR

yay -S stow

3. Stow the Dotfiles

To symlink the configuration files to your home directory, use stow for each technology you want to configure. For example:

stow waybar
stow hyprlock
stow hyprland
stow hyprpaper
stow kitty
stow starship
stow wofi
stow backgrounds


Repeat for any other directories you want to stow.

4. Install JetBrains Mono Nerd Font

Download and install the JetBrains Mono Nerd Font:

Create fonts directory if it doesn't exist:

mkdir -p ~/.local/share/fonts


Download the font (replace with the latest version if needed):

wget -O JetBrainsMono.zip "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip"


Unzip and refresh font cache:

unzip JetBrainsMono.zip -d ~/.local/share/fonts
fc-cache -fv

5. Install Required Applications

Install the main applications used in this configuration using yay:

yay -S waybar hyprland hyprlock hyprpaper kitty wofi

6. (Optional) Configure Additional Applications

Zen Browser:

yay -S zen-browser-bin


Spotify:

yay -S spotify-launcher


Vesktop:

yay -S vesktop


Figma Font Helper: Download and install from Figma’s official site.

7. Final Steps

After installing everything, restart your session or reload your configuration as needed. Enjoy your new setup!

For any issues or questions, please open an issue on this repository.

Key changes made:

Added a specific title indicating this guide is for Arch Linux with yay.
Consolidated the stow commands to include all relevant directories.
Specified that yay should be used for installing the main applications.
Added yay commands for optional applications.
Ensured clear and consistent formatting.
