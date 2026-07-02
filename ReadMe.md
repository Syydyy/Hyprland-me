# Hyprland-me - Guia básico para minhas configurações

Minha configuração pessoal do Hyprland para Arch Linux / CachyOS, com tema dinâmico, dotfiles modulares em Lua e instalador automatizado.

## Alguns atalhos importantes

* Abrir Terminal - SUPER + T
* Fechar uma janela - SUPER + Q
* Abrir navegador (Firefox) - SUPER + B
* Launcher de aplicativos (Rofi) - SUPER + R
* Abrir Vscode  - SUPER + V
* Prancheta Aberta - SUPER + Shift + V
* Seletor de tema personalizado - SUPER + RETURN
* Seletor de papel de parede personalizado - SUPER + W
* Switcher de barra de waybar aberta - SUPER + Shift + W
* Abrir um comutador personalizado de transição de papel de parede - SUPER + Alt + W
* Abrir o menu de Aparência (Todos os switchers estão disponíveis aqui) - SUPER + A
* Sair e fechar todos os aplicativos - SUPER + CTRL + P
* Você pode alterar essas configurações de teclas em ~/.config/hypr/modules/keybinds.lua

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


* sudo pacman -S --needed git base-devel
* git clone https://github.com/Syydyy/Hyprland-me.git ~/Hyprland-me
* cd ~/Hyprland-me
* chmod +x install.sh
* ./install.sh

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
