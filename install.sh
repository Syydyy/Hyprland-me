#!/bin/bash
set -e

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="$HOME/.config"

echo "=================================================="
echo "  Hyprland-me — Instalador"
echo "=================================================="

if ! command -v pacman &> /dev/null; then
    echo "❌ Este script é destinado a sistemas baseados em Arch Linux (pacman não encontrado)."
    exit 1
fi

if ! command -v yay &> /dev/null; then
    echo "📦 yay não encontrado. Instalando..."
    sudo pacman -S --needed --noconfirm git base-devel
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    (cd /tmp/yay && makepkg -si --noconfirm)
    rm -rf /tmp/yay
fi

if [ -s "$REPO_DIR/explicit_packages.txt" ]; then
    echo "📦 Instalando pacotes oficiais..."
    sudo pacman -S --needed --noconfirm $(cat "$REPO_DIR/explicit_packages.txt") || \
        echo "⚠️  Alguns pacotes oficiais podem ter falhado. Verifique manualmente."
fi

if [ -s "$REPO_DIR/aur_packages.txt" ]; then
    echo "📦 Instalando pacotes do AUR..."
    yay -S --needed --noconfirm $(cat "$REPO_DIR/aur_packages.txt") || \
        echo "⚠️  Alguns pacotes do AUR podem ter falhado. Verifique manualmente."
fi

echo "⚙️  Copiando configurações para $CONFIG_DIR..."
mkdir -p "$CONFIG_DIR"

for dir in hypr kitty rofi swaync swayosd waybar; do
    if [ -d "$REPO_DIR/$dir" ]; then
        echo "  → $dir"
        cp -r "$REPO_DIR/$dir" "$CONFIG_DIR/"
    fi
done

if [ -d "$REPO_DIR/themes" ]; then
    echo "  → themes (para hypr/themes)"
    mkdir -p "$CONFIG_DIR/hypr/themes"
    cp -r "$REPO_DIR/themes/"* "$CONFIG_DIR/hypr/themes/"
fi

echo "🔧 Ajustando permissões de scripts..."
find "$CONFIG_DIR/hypr" -type f -name "*.sh" -exec chmod +x {} \; 2>/dev/null || true
find "$CONFIG_DIR/rofi" -type f \( -name "*.sh" -o -path "*/scripts/*" \) -exec chmod +x {} \; 2>/dev/null || true
find "$CONFIG_DIR/waybar" -type f -name "*.sh" -exec chmod +x {} \; 2>/dev/null || true

echo "=================================================="
echo "✅ Instalação concluída!"
echo "   Reinicie a sessão ou faça logout/login no Hyprland."
echo "=================================================="
