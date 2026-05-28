# 🌸 Install Terminal Setup with Claude

This document contains a ready-made prompt you can give to Claude Code
so it automatically sets up this terminal on your machine.

---

## How it works

1. Open Claude Code in your terminal
2. Copy the prompt below in full
3. Paste it into Claude Code and send it
4. Claude handles the rest

---

## The Prompt

```
I want to set up my terminal. I have a repository called pink-terminal that contains:

- install.sh              → installs all tools automatically
- dotfiles/               → .zshrc, .p10k.zsh, .terminal_banner.py
- fonts/                  → MesloLGS NF (4 variants, for Windows Terminal)
- themes/amira-pink.json  → Windows Terminal color scheme
- config/glow/            → pink glow theme for markdown
- CHEATSHEET.md           → overview of all commands

Please help me with:

1. Running the install script:
   bash install.sh
   (It installs: zsh, Oh My Zsh, Powerlevel10k, fzf, zoxide, bat,
   eza, lazygit, btop, croc, ripgrep, delta, fd, tldr, glow, onefetch)

2. Installing the MesloLGS NF font on Windows:
   - Copy the 4 TTF files from the fonts/ folder to Windows
   - Double-click each → "Install"
   - In Windows Terminal settings: set font to "MesloLGS NF"

3. Applying the color scheme:
   - Copy themes/amira-pink.json into Windows Terminal settings.json → schemes array
   - Set "colorScheme": "Amira Pink" in the Ubuntu profile

4. Restarting the terminal and checking everything works

5. If something goes wrong, help me debug it

Note: I'm on WSL2 with Ubuntu 24.04. My username is [YOUR_USERNAME].
Please adjust all paths accordingly.
```

---

## Notes

- Replace `[YOUR_USERNAME]` in the prompt with your actual Linux username
  (find out with: `whoami`)
- Copy the zip or clone the repo into WSL first, e.g. via Windows Explorer:
  `\\wsl$\Ubuntu-24.04\home\[USERNAME]\`
- After installation: `glow CHEATSHEET.md` to see all commands

---

## Manual install (without Claude)

```bash
git clone https://github.com/eenanab/pink-terminal ~/github/pink-terminal
cd ~/github/pink-terminal
bash install.sh
```

Then install the fonts and restart the terminal. Done! ♡
