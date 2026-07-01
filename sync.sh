#!/bin/bash
set -e

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="$HOME/.config"

echo "=================================================="
echo "  Hyprland-me — Sync"
echo "=================================================="

echo "⚙️  Sincronizando configurações do sistema para o repositório..."

for dir in hypr kitty rofi swaync swayosd waybar; do
    if [ -d "$CONFIG_DIR/$dir" ]; then
        echo "  → $dir"
        rsync -a --delete "$CONFIG_DIR/$dir/" "$REPO_DIR/$dir/"
    fi
done

if [ -d "$CONFIG_DIR/hypr/themes" ]; then
    echo "  → themes"
    rsync -a --delete "$CONFIG_DIR/hypr/themes/" "$REPO_DIR/themes/"
fi

echo "📦 Atualizando listas de pacotes..."
pacman -Qqe > "$REPO_DIR/explicit_packages.txt"
pacman -Qqm > "$REPO_DIR/aur_packages.txt"
cp "$REPO_DIR/aur_packages.txt" "$REPO_DIR/true_aur_list.txt"

echo "🔤 Atualizando lista de fontes..."
fc-list : family | sort -u > "$REPO_DIR/my_fonts.txt"

echo "🧹 Limpando arquivos de histórico/cache irrelevantes..."
find "$REPO_DIR" -name ".wallpaper_history" -delete 2>/dev/null || true

echo "=================================================="
echo "✅ Sincronização concluída."
echo "   Revise as mudanças com: git -C \"$REPO_DIR\" diff"
echo "   Depois faça: git add . && git commit -m \"sync: atualizar dotfiles\" && git push"
echo "=================================================="
