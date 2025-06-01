### Dotfiles Setup Guide (Arch Linux - Using yay or pacman)

Welcome! This guide will help you set up your environment using these dotfiles on Arch Linux. This guide primarily uses `yay` (Yet Another Yogurt) as the package manager, which is an AUR (Arch User Repository) helper. If you prefer, you can use `pacman`, the default package manager for Arch Linux, for most steps. Follow the instructions below to clone the repository, install the required fonts and applications, and then stow the configuration files.

#### Installing yay (Optional)

If you don't have `yay` installed, you can install it using the following steps:

1.  **Install `git` and `base-devel`:**

    ```sh
    sudo pacman -S git base-devel
    ```

2.  **Clone the `yay` repository:**

    ```sh
    git clone https://aur.archlinux.org/yay.git
    cd yay
    ```

3.  **Build and install `yay`:**

    ```sh
    makepkg -si
    ```

#### 1. Clone the Repository

```sh
https://github.com/pedrohhope/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

#### 2. Install GNU Stow

```sh
sudo pacman -S stow
```

OR

```sh
yay -S stow
```

#### 3. Install Required Applications

```sh
yay -S waybar hyprland hyprlock hyprpaper kitty wofi
```

#### 4. Install JetBrains Mono Nerd Font

```sh
mkdir -p ~/.local/share/fonts
wget -O JetBrainsMono.zip "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip"
unzip JetBrainsMono.zip -d ~/.local/share/fonts
fc-cache -fv
```

#### 5. (Optional) Configure Additional Applications & Themes

This setup is designed to be themed with [Catppuccin](https://catppuccin.com/), a community-driven pastel theme that supports a wide range of applications. The following applications can be themed using Catppuccin:

**Zen Browser:**

-   Install Zen Browser:

    ```sh
    yay -S zen-browser-bin
    ```

**Spotify:**

-   Install Spotify:

    ```sh
    yay -S spotify-launcher
    ```

-   Install Spicetify CLI:

    ```sh
    yay -S spicetify-cli
    ```

**Vesktop ( Discord Alternative ):**

```sh
yay -S vesktop
```

**Figma Font Helper:**  
Download and install from [Figma’s official site](https://www.figma.com/downloads/).

#### 6. Stow the Dotfiles

Now that the applications are installed, use `stow` to symlink the configuration files to your home directory:

```sh
stow waybar
stow hyprlock
stow hyprland
stow hyprpaper
stow kitty
stow starship
stow wofi
stow backgrounds
```

Repeat for any other directories you want to stow.

#### 7. Final Steps

After installing everything, restart your session or reload your configuration as needed. Enjoy your new setup!

For any issues or questions, please open an issue on this repository.
