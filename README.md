<div align="center">

# 🌸 pink-terminal

**A cozy, fully pink WSL2 terminal setup**

![Platform](https://img.shields.io/badge/platform-WSL2%20Ubuntu-ff9eb5?style=flat-square&labelColor=4a2040)
![Shell](https://img.shields.io/badge/shell-zsh%20%2B%20p10k-f48fb1?style=flat-square&labelColor=4a2040)
![Font](https://img.shields.io/badge/font-MesloLGS%20NF-b39ddb?style=flat-square&labelColor=4a2040)
![Theme](https://img.shields.io/badge/theme-Amira%20Pink-ff79c6?style=flat-square&labelColor=4a2040)

</div>

---

## 💕 What's inside

| Path | Description |
|---|---|
| `dotfiles/.zshrc` | Zsh config — fzf, eza, zsh-highlight, p10k, aliases |
| `dotfiles/.p10k.zsh` | Powerlevel10k prompt config |
| `dotfiles/.terminal_banner.py` | Pretty banner on terminal start |
| `themes/amira-pink.json` | Windows Terminal color scheme |
| `config/glow/` | Glow markdown viewer config |
| `fonts/` | MesloLGS NF — all 4 weights |
| `kaomojis/kaomojis.md` | Kaomoji collection ♡ |
| `CHEATSHEET.md` | Full command reference |
| `CLAUDE_PROMPT.md` | Claude AI setup prompt |
| `install.sh` | Automated install script |

---

## 🎀 Color Palette — Amira Pink

| Swatch | Name | Hex | Vibe |
|---|---|---|---|
| 🟣 | Background | `#1a0f1e` | deep dark plum |
| 🌸 | Foreground | `#f8c8e8` | soft pink |
| 💗 | Cursor | `#ff79c6` | hot pink |
| 🌷 | Selection BG | `#6e2b5e` | dark plum |
| 🩷 | Red → Soft Rose | `#ff9eb5` | gentle rose |
| 🍑 | Yellow → Peach | `#ffb7a0` | warm peach |
| 🌿 | Green | `#7ed8d0` | minty teal |
| 💜 | Blue | `#b39ddb` | lavender |
| 🌺 | Purple | `#f48fb1` | dusty rose |
| 🩵 | Cyan | `#8ecae6` | sky blue |

---

## ✨ Installation

### 1 — Fonts
Install all 4 `fonts/MesloLGS NF *.ttf` files on Windows (double-click → Install).
Then set the font in Windows Terminal → `"face": "MesloLGS NF"`.

### 2 — Windows Terminal theme
Copy `themes/amira-pink.json` into your Windows Terminal `settings.json` → `schemes` array,
then set your Ubuntu profile to `"colorScheme": "Amira Pink"`.

### 3 — WSL2 / Ubuntu
```bash
git clone https://github.com/eenanab/pink-terminal ~/github/pink-terminal
cd ~/github/pink-terminal
chmod +x install.sh
./install.sh
```

Or from the zip:
```bash
unzip terminal-setup2.zip && cd terminal-setup2
bash install.sh
```

---

## 🌷 Tools

| Tool | What it does |
|---|---|
| `zsh` + Oh-My-Zsh | Shell |
| Powerlevel10k | Beautiful prompt |
| `fzf` | Fuzzy finder — `Ctrl+R`, `Ctrl+T` |
| `eza` | Better `ls` with icons |
| `bat` | Better `cat` with syntax highlighting |
| `fd` | Better `find` |
| `rg` (ripgrep) | Blazing fast grep |
| `delta` | Beautiful git diffs |
| `lazygit` | Visual git UI (`lg`) |
| `zoxide` | Smart `cd` (`z`) |
| `glow` | Render markdown in terminal |
| `btop` | System monitor |
| `tldr` | Simplified man pages |
| `croc` | Encrypted peer-to-peer file transfer |
| `onefetch` | Repo statistics |

---

<div align="center">

(ﾉ◕ヮ◕)ﾉ*:･ﾟ✧ &nbsp; made with love by amira &nbsp; ♡

</div>
