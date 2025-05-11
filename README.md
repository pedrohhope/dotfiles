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

    Follow the prompts during the installation.

#### 1. Clone the Repository

First, clone this repository to your home directory:

```sh
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

#### 2. Install GNU Stow

Install GNU Stow using `pacman` or `yay`:

```sh
sudo pacman -S stow
```

OR

```sh
yay -S stow
```

#### 3. Install Required Applications

Install the main applications used in this configuration.  If you're using `pacman`, replace `yay` with `sudo pacman -S`.

```sh
yay -S waybar hyprland hyprlock hyprpaper kitty wofi
```

#### 4. Install JetBrains Mono Nerd Font

Download and install the JetBrains Mono Nerd Font:

**Create fonts directory if it doesn't exist:**

```sh
mkdir -p ~/.local/share/fonts
```

**Download the font (replace with the latest version if needed):**

```sh
wget -O JetBrainsMono.zip "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip"
```

**Unzip and refresh font cache:**

```sh
unzip JetBrainsMono.zip -d ~/.local/share/fonts
fc-cache -fv
```

#### 5. (Optional) Configure Additional Applications

Install optional applications. If you're using `pacman`, replace `yay` with `sudo pacman -S`.

-   **Zen Browser:**

    ```sh
    yay -S zen-browser-bin
    ```

-   **Spotify:**

    ```sh
    yay -S spotify-launcher
    ```

-   **Vesktop:**

    ```sh
    yay -S vesktop
    ```

-   **Figma Font Helper:** Download and install from [Figma’s official site](https://www.figma.com/downloads/).

#### 6. Stow the Dotfiles

Now that the applications are installed, use `stow` to symlink the configuration files to your home directory. For example:

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
