# ♡ pink-terminal

Amiras pinkes Terminal-Setup für WSL2 Ubuntu mit Windows Terminal.

## Was ist drin?

| Ordner/Datei | Inhalt |
|---|---|
| `dotfiles/.zshrc` | Zsh-Konfiguration mit fzf, eza, zsh-highlight, p10k |
| `dotfiles/.p10k.zsh` | Powerlevel10k Prompt-Konfiguration |
| `dotfiles/.terminal_banner.py` | Terminal-Banner beim Start |
| `themes/amira-pink.json` | Windows Terminal Farbschema |
| `config/glow/` | Glow Markdown-Viewer Konfiguration |
| `fonts/` | MesloLGS NF (alle 4 Schnitte) |
| `kaomojis/kaomojis.md` | Kaomoji-Sammlung ♡ |
| `CHEATSHEET.md` | Befehls-Cheatsheet |
| `CLAUDE_PROMPT.md` | Claude AI Prompt-Konfiguration |
| `install.sh` | Automatisches Install-Skript |

## Farbschema: Amira Pink

| Farbe | Hex |
|---|---|
| Background | `#1a0f1e` |
| Foreground | `#f8c8e8` |
| Cursor | `#ff79c6` |
| Red (Soft Rose) | `#ff9eb5` |
| Yellow (Peach) | `#ffb7a0` |
| Green | `#7ed8d0` |
| Blue | `#b39ddb` |
| Purple | `#f48fb1` |
| Cyan | `#8ecae6` |

## Setup

### Windows Terminal
1. `themes/amira-pink.json` Inhalt in Windows Terminal `settings.json` → `schemes` Array einfügen
2. Im Profil `"colorScheme": "Amira Pink"` setzen

### WSL2 / Ubuntu
```bash
chmod +x install.sh
./install.sh
```

## Tools
- Zsh + Oh-My-Zsh + Powerlevel10k
- fzf (fuzzy finder, pink theme)
- eza (ls-Ersatz)
- bat, fd, rg, delta, zoxide, glow, btop
- MesloLGS NF Font

---
(ﾉ◕ヮ◕)ﾉ*:･ﾟ✧ made with love by amira
