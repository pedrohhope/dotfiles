# 🏠 Dotfiles

A clean and minimal Arch Linux desktop configuration featuring Hyprland, Waybar, and Catppuccin theming.

## ✨ Features

- **Window Manager**: Hyprland (Wayland compositor)
- **Status Bar**: Waybar with custom modules
- **Terminal**: Kitty with custom theming
- **App Launcher**: Wofi
- **Lock Screen**: Hyprlock
- **Theme**: Catppuccin (dark theme)
- **Font**: JetBrains Mono Nerd Font
- **Shell**: Fish with custom functions and aliases
- **Shell Prompt**: Starship

## 📋 Requirements

- Arch Linux (or Arch-based distribution)
- Git
- GNU Stow

## 🚀 Quick Start

### 1. Install yay (AUR helper)

```bash
sudo pacman -S git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si
```

### 2. Clone the Repository

```bash
git clone https://github.com/pedrohhope/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 3. Install Dependencies

```bash
# Core utilities
yay -S stow

# Desktop environment
yay -S hyprland hyprlock hyprpaper waybar kitty wofi starship fish

# Install JetBrains Mono Nerd Font
mkdir -p ~/.local/share/fonts
wget -O JetBrainsMono.zip "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip"
unzip JetBrainsMono.zip -d ~/.local/share/fonts
fc-cache -fv
```

### 4. Deploy Configurations

```bash
stow hyprland waybar kitty wofi hyprlock starship fish backgrounds
```

### 5. Post-Installation

1. **Set Fish as default shell**: `chsh -s /usr/bin/fish`
2. **Logout and log back in** to apply the new configuration
3. **Select Hyprland** as your session in your display manager
4. **Enjoy your new setup!**

## 🎨 Optional Applications

The setup works great with these Catppuccin-themed applications:

```bash
# Web Browser
yay -S zen-browser-bin

# Media
yay -S spotify-launcher spicetify-cli

# Communication
yay -S vesktop
```

## 📁 Configuration Structure

```
~/dotfiles/
├── hyprland/     # Window manager config
├── waybar/       # Status bar config
├── kitty/        # Terminal emulator config
├── wofi/         # Application launcher config
├── hyprlock/     # Lock screen config
├── starship/     # Shell prompt config
├── backgrounds/  # Wallpapers
└── scripts/      # Utility scripts
```

## 🔧 Customization

- **Wallpapers**: Add your wallpapers to `backgrounds/` directory
- **Keybindings**: Edit `hyprland/.config/hypr/hyprland.conf`
- **Fish aliases**: Edit `fish/.config/fish/config.fish`
- **Fish functions**: Add custom functions in `fish/.config/fish/functions/`
- **Colors**: All configurations use Catppuccin color scheme

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

---

**Issues?** Open an issue on this repository for help!