# ♡ Terminal Setup mit Claude installieren

Dieses Dokument enthält einen fertigen Prompt den du Claude geben kannst,
damit er das Terminal-Setup automatisch auf deinem Laptop einrichtet.

---

## So gehts

1. Öffne Claude Code im Terminal deines Laptops
2. Kopiere den Prompt unten komplett
3. Füge ihn in Claude Code ein und schicke ihn ab
4. Claude erledigt den Rest

---

## Der Prompt

```
Ich möchte mein Terminal-Setup einrichten. Ich habe eine Datei namens
terminal-setup2.zip die folgendes enthält:

- install.sh         → installiert alle Tools automatisch
- dotfiles/          → .zshrc, .p10k.zsh, .terminal_banner.py
- fonts/             → MesloLGS NF (4 Varianten, für Windows Terminal)
- config/glow/       → pinkes Glow-Theme für Markdown
- CHEATSHEET.md      → Übersicht aller Befehle
- CHEATSHEET.md      → diese Datei

Bitte hilf mir dabei:

1. Die ZIP-Datei zu entpacken (sie liegt unter ~/terminal-setup2.zip
   oder wo ich sie abgelegt habe)

2. Das install.sh auszuführen mit: bash install.sh
   (Es installiert: zsh, Oh My Zsh, Powerlevel10k, fzf, zoxide, bat,
   eza, lazygit, btop, croc, ripgrep, delta, fd, tldr, glow, onefetch)

3. Die MesloLGS NF Schriftart auf Windows zu installieren:
   - Die 4 TTF-Dateien aus dem fonts/ Ordner nach Windows kopieren
   - In Windows Explorer doppelklicken → "Installieren"
   - In Windows Terminal Einstellungen: Schriftart auf "MesloLGS NF" setzen

4. Das Terminal neu zu starten und zu prüfen ob alles funktioniert

5. Falls etwas nicht klappt, hilf mir beim Debuggen

Wichtig: Ich bin auf WSL2 mit Ubuntu 24.04. Mein Benutzername ist [DEIN_USERNAME].
Passe alle Pfade entsprechend an.
```

---

## Hinweise

- Ersetze `[DEIN_USERNAME]` im Prompt mit deinem tatsächlichen Linux-Benutzernamen
  (herausfinden mit: `whoami`)
- Die ZIP-Datei muss erst von Windows nach WSL kopiert werden, z.B. über
  den Windows Explorer: `\\wsl$\Ubuntu-24.04\home\[USERNAME]\`
- Nach der Installation: `glow CHEATSHEET.md` für alle Befehle

---

## Alternativ: Ohne Claude selbst installieren

```bash
cd ~
unzip terminal-setup2.zip
cd terminal-setup2
bash install.sh
```

Dann die Fonts installieren und Terminal neu starten. Fertig!
