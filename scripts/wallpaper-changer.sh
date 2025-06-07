#!/bin/bash

# Wallpaper changer script using swww
# Usage: ./wallpaper-changer.sh [next|prev|random]

WALLPAPER_DIR="$HOME/dotfiles/backgrounds"
STATE_FILE="$HOME/.config/current_wallpaper"

# Create wallpaper directory if it doesn't exist
mkdir -p "$WALLPAPER_DIR"

# Get all image files in the wallpaper directory
WALLPAPERS=($(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) | sort))

# Check if there are any wallpapers
if [ ${#WALLPAPERS[@]} -eq 0 ]; then
    echo "No wallpapers found in $WALLPAPER_DIR"
    exit 1
fi

# Initialize swww daemon if not running
if ! pgrep -x "swww-daemon" > /dev/null; then
    swww-daemon &
    sleep 1
fi

# Get current wallpaper index
CURRENT_INDEX=0
if [ -f "$STATE_FILE" ]; then
    CURRENT_WALLPAPER=$(cat "$STATE_FILE")
    for i in "${!WALLPAPERS[@]}"; do
        if [[ "${WALLPAPERS[$i]}" == "$CURRENT_WALLPAPER" ]]; then
            CURRENT_INDEX=$i
            break
        fi
    done
fi

# Function to set wallpaper
set_wallpaper() {
    local wallpaper="$1"
    echo "$wallpaper" > "$STATE_FILE"
    swww img "$wallpaper" \
        --transition-type wipe \
        --transition-duration 1 \
        --transition-fps 60 \
        --transition-angle 30
    echo "Wallpaper set to: $(basename "$wallpaper")"
}

# Handle command line arguments
case "${1:-next}" in
    "next")
        NEXT_INDEX=$(( (CURRENT_INDEX + 1) % ${#WALLPAPERS[@]} ))
        set_wallpaper "${WALLPAPERS[$NEXT_INDEX]}"
        ;;
    "prev")
        PREV_INDEX=$(( (CURRENT_INDEX - 1 + ${#WALLPAPERS[@]}) % ${#WALLPAPERS[@]} ))
        set_wallpaper "${WALLPAPERS[$PREV_INDEX]}"
        ;;
    "random")
        RANDOM_INDEX=$((RANDOM % ${#WALLPAPERS[@]}))
        set_wallpaper "${WALLPAPERS[$RANDOM_INDEX]}"
        ;;
    "list")
        echo "Available wallpapers:"
        for i in "${!WALLPAPERS[@]}"; do
            if [ $i -eq $CURRENT_INDEX ]; then
                echo "* $i: $(basename "${WALLPAPERS[$i]}")"
            else
                echo "  $i: $(basename "${WALLPAPERS[$i]}")"
            fi
        done
        ;;
    *)
        echo "Usage: $0 [next|prev|random|list]"
        echo "  next   - Next wallpaper"
        echo "  prev   - Previous wallpaper"
        echo "  random - Random wallpaper"
        echo "  list   - List all wallpapers"
        ;;
esac