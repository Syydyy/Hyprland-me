# Hyprland-me - Guia básico para minhas configurações

Minha configuração pessoal do Hyprland para Arch Linux / CachyOS, com tema dinâmico, dotfiles modulares em Lua e instalador automatizado.

## Alguns atalhos importantes

* Terminal aberto para gatos - Super + T

* Fechar uma janela - Super + Q

* Abrir navegador (Firefox) - Super + B

* Launcher de aplicativos abertos (Rofi) - Super + R

* Vscode aberto - Super + V

* Prancheta Aberta - Super + Shift + V

* Seletor de tema aberto personalizado - Super + RETURN

* Comutador de papel de parede personalizado aberto - Super + W

* Switcher de barra de waybar aberta - Super + Shift + W

* Abrir um comutador personalizado de transição de papel de parede - Super + Alt + W

* Abrir o menu de Aparência (Todos os switchers estão disponíveis aqui) - Super + A

* Sair e fechar todos os aplicativos - Super + CTRL + P

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
