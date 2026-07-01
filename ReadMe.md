# Hyprland-me

Minha configuração pessoal do Hyprland para Arch Linux / CachyOS, com tema dinâmico, dotfiles modulares em Lua e instalador automatizado.

## Alguns atalhos importantes

Open kitty terminal - Super + T
Close a window - Super + Q
Open browser (Firefox) - Super + B
Open app launcher (Rofi) - Super + R
Open vscode - Super + V
Open Clipboard - Super + Shift + V 
Open Custom theme switcher - Super + RETURN
Open Custom wallpaper switcher - Super + W
Open waybar switcher - Super + Shift + W
Open custom wallpaper transition switcher - Super + Alt + W
Open Appearance menu (All switchers are available here) - Super + A
Logout and close all apps - Super + CTRL + P
You can change these keybindings in ~/.config/hypr/modules/keybinds.lua

## ✨ Stack

- **Hyprland** (configuração modular em Lua, 0.55+)
- **Waybar** — barra de status
- **Kitty** — terminal
- **Rofi** — launcher de aplicativos
- **SwayNC** — central de notificações
- **SwayOSD** — overlay de volume/brilho

## 🎨 Temas inclusos

Catppuccin, Dracula, Tokyo Night, Kanagawa, Monokai Pro, Nebula, Nord,
Gruvbox, Everforest, Solarized Dark, Onedark, Obsidian, Midnight Carbon,
Deep Ocean, Emerald, Oxocarbon, Palenight, Rose Pine, E-ink

Cada tema entrega cores para Hyprland, Waybar, Rofi, Kitty, Hyprlock e SwayNC simultaneamente.

## 🚀 Instalação

\`\`\`bash
git clone https://github.com/Syydyy/Hyprland-me.git
cd Hyprland-me
./install.sh
\`\`\`

O script instala os pacotes necessários (oficiais e AUR), copia as configurações para \`~/.config/\` e ajusta as permissões dos scripts.

## 📦 Pacotes

- \`explicit_packages.txt\` — pacotes oficiais instalados
- \`aur_packages.txt\` — pacotes do AUR
- \`my_fonts.txt\` — fontes utilizadas no sistema

## 🖥️ Hardware testado

- GPU: AMD RX 9070 (RDNA4)
- Monitor: DP-3 @ 1920x1080 165Hz

## 📄 Licença

Uso livre para fins pessoais e educacionais.
