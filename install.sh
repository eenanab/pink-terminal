#!/bin/bash
# ══════════════════════════════════════════════════════
#  Amira's Terminal Setup v2 — Install Script
#  Ausführen mit: bash install.sh
# ══════════════════════════════════════════════════════

set -e
echo ""
echo "  ♡ Amira's Terminal Setup v2 wird installiert..."
echo ""

LOCALBIN="$HOME/.local/bin"
mkdir -p "$LOCALBIN"

# ── 1. Oh My Zsh ──────────────────────────────────────
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "  → Oh My Zsh installieren..."
  RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "  ✓ Oh My Zsh bereits vorhanden"
fi

# ── 2. Powerlevel10k ──────────────────────────────────
P10K_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
if [ ! -d "$P10K_DIR" ]; then
  echo "  → Powerlevel10k installieren..."
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$P10K_DIR"
else
  echo "  ✓ Powerlevel10k bereits vorhanden"
fi

# ── 3. Plugins ────────────────────────────────────────
PLUGINS_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins"

if [ ! -d "$PLUGINS_DIR/zsh-autosuggestions" ]; then
  echo "  → zsh-autosuggestions installieren..."
  git clone https://github.com/zsh-users/zsh-autosuggestions "$PLUGINS_DIR/zsh-autosuggestions"
else
  echo "  ✓ zsh-autosuggestions bereits vorhanden"
fi

if [ ! -d "$PLUGINS_DIR/zsh-syntax-highlighting" ]; then
  echo "  → zsh-syntax-highlighting installieren..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$PLUGINS_DIR/zsh-syntax-highlighting"
else
  echo "  ✓ zsh-syntax-highlighting bereits vorhanden"
fi

# ── 4. fzf ────────────────────────────────────────────
if [ ! -d "$HOME/.fzf" ]; then
  echo "  → fzf installieren..."
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install --all --no-bash --no-fish
else
  echo "  ✓ fzf bereits vorhanden"
fi

# ── 5. zoxide ─────────────────────────────────────────
if ! command -v zoxide &>/dev/null; then
  echo "  → zoxide installieren..."
  curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
else
  echo "  ✓ zoxide bereits vorhanden"
fi

# ── 6. bat ────────────────────────────────────────────
if ! command -v bat &>/dev/null && [ ! -f "$LOCALBIN/bat" ]; then
  echo "  → bat installieren..."
  BAT_VER="0.24.0"
  curl -sLo /tmp/bat.deb "https://github.com/sharkdp/bat/releases/download/v${BAT_VER}/bat_${BAT_VER}_amd64.deb"
  dpkg -x /tmp/bat.deb /tmp/bat-extract
  cp /tmp/bat-extract/usr/bin/bat "$LOCALBIN/bat"
  rm -rf /tmp/bat.deb /tmp/bat-extract
  echo "  ✓ bat installiert"
else
  echo "  ✓ bat bereits vorhanden"
fi

# ── 7. eza ────────────────────────────────────────────
if [ ! -f "$LOCALBIN/eza" ]; then
  echo "  → eza installieren..."
  curl -sLo /tmp/eza.tar.gz "https://github.com/eza-community/eza/releases/download/v0.23.0/eza_x86_64-unknown-linux-musl.tar.gz"
  tar -xzf /tmp/eza.tar.gz -C /tmp eza
  mv /tmp/eza "$LOCALBIN/eza"
  rm /tmp/eza.tar.gz
  echo "  ✓ eza installiert"
else
  echo "  ✓ eza bereits vorhanden"
fi

# ── 8. lazygit ────────────────────────────────────────
if [ ! -f "$LOCALBIN/lazygit" ]; then
  echo "  → lazygit installieren..."
  curl -sLo /tmp/lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v0.44.1/lazygit_0.44.1_Linux_x86_64.tar.gz"
  tar -xzf /tmp/lazygit.tar.gz -C /tmp lazygit
  mv /tmp/lazygit "$LOCALBIN/lazygit"
  rm /tmp/lazygit.tar.gz
  echo "  ✓ lazygit installiert"
else
  echo "  ✓ lazygit bereits vorhanden"
fi

# ── 9. btop ───────────────────────────────────────────
if [ ! -f "$LOCALBIN/btop" ]; then
  echo "  → btop installieren..."
  curl -sLo /tmp/btop.tbz "https://github.com/aristocratos/btop/releases/download/v1.4.0/btop-x86_64-linux-musl.tbz"
  mkdir -p /tmp/btop-ex
  tar -xjf /tmp/btop.tbz -C /tmp/btop-ex
  cp /tmp/btop-ex/btop/bin/btop "$LOCALBIN/btop"
  rm -rf /tmp/btop.tbz /tmp/btop-ex
  echo "  ✓ btop installiert"
else
  echo "  ✓ btop bereits vorhanden"
fi

# ── 10. croc ──────────────────────────────────────────
if [ ! -f "$LOCALBIN/croc" ]; then
  echo "  → croc installieren..."
  curl -sLo /tmp/croc.tar.gz "https://github.com/schollz/croc/releases/download/v10.4.4/croc_v10.4.4_Linux-64bit.tar.gz"
  tar -xzf /tmp/croc.tar.gz -C /tmp croc
  mv /tmp/croc "$LOCALBIN/croc"
  rm /tmp/croc.tar.gz
  echo "  ✓ croc installiert"
else
  echo "  ✓ croc bereits vorhanden"
fi

# ── 11. ripgrep ───────────────────────────────────────
if [ ! -f "$LOCALBIN/rg" ]; then
  echo "  → ripgrep installieren..."
  curl -sLo /tmp/rg.tar.gz "https://github.com/BurntSushi/ripgrep/releases/download/14.1.1/ripgrep-14.1.1-x86_64-unknown-linux-musl.tar.gz"
  tar -xzf /tmp/rg.tar.gz -C /tmp
  mv /tmp/ripgrep-14.1.1-x86_64-unknown-linux-musl/rg "$LOCALBIN/rg"
  rm -rf /tmp/rg.tar.gz /tmp/ripgrep-*
  echo "  ✓ ripgrep installiert"
else
  echo "  ✓ ripgrep bereits vorhanden"
fi

# ── 12. delta ─────────────────────────────────────────
if [ ! -f "$LOCALBIN/delta" ]; then
  echo "  → delta installieren..."
  curl -sLo /tmp/delta.tar.gz "https://github.com/dandavison/delta/releases/download/0.19.2/delta-0.19.2-x86_64-unknown-linux-musl.tar.gz"
  tar -xzf /tmp/delta.tar.gz -C /tmp
  mv /tmp/delta-0.19.2-x86_64-unknown-linux-musl/delta "$LOCALBIN/delta"
  rm -rf /tmp/delta.tar.gz /tmp/delta-*
  git config --global core.pager delta
  git config --global interactive.diffFilter "delta --color-only"
  git config --global delta.navigate true
  echo "  ✓ delta installiert + git konfiguriert"
else
  echo "  ✓ delta bereits vorhanden"
fi

# ── 13. fd ────────────────────────────────────────────
if [ ! -f "$LOCALBIN/fd" ]; then
  echo "  → fd installieren..."
  curl -sLo /tmp/fd.tar.gz "https://github.com/sharkdp/fd/releases/download/v10.2.0/fd-v10.2.0-x86_64-unknown-linux-musl.tar.gz"
  tar -xzf /tmp/fd.tar.gz -C /tmp
  mv /tmp/fd-v10.2.0-x86_64-unknown-linux-musl/fd "$LOCALBIN/fd"
  rm -rf /tmp/fd.tar.gz /tmp/fd-*
  echo "  ✓ fd installiert"
else
  echo "  ✓ fd bereits vorhanden"
fi

# ── 14. tldr ──────────────────────────────────────────
if ! command -v tldr &>/dev/null; then
  echo "  → tldr installieren..."
  pip3 install --user --break-system-packages tldr
  echo "  ✓ tldr installiert"
else
  echo "  ✓ tldr bereits vorhanden"
fi

# ── 15. glow ──────────────────────────────────────────
if [ ! -f "$LOCALBIN/glow" ]; then
  echo "  → glow installieren..."
  curl -sLo /tmp/glow.tar.gz "https://github.com/charmbracelet/glow/releases/download/v2.1.0/glow_2.1.0_Linux_x86_64.tar.gz"
  mkdir -p /tmp/glow-ex
  tar -xzf /tmp/glow.tar.gz -C /tmp/glow-ex
  mv /tmp/glow-ex/glow_2.1.0_Linux_x86_64/glow "$LOCALBIN/glow"
  rm -rf /tmp/glow.tar.gz /tmp/glow-ex
  echo "  ✓ glow installiert"
else
  echo "  ✓ glow bereits vorhanden"
fi

# ── 16. onefetch ──────────────────────────────────────
if [ ! -f "$LOCALBIN/onefetch" ]; then
  echo "  → onefetch installieren..."
  curl -sLo /tmp/onefetch.tar.gz "https://github.com/o2sh/onefetch/releases/download/2.27.1/onefetch-linux.tar.gz"
  tar -xzf /tmp/onefetch.tar.gz -C /tmp
  mv /tmp/onefetch "$LOCALBIN/onefetch"
  rm /tmp/onefetch.tar.gz
  echo "  ✓ onefetch installiert"
else
  echo "  ✓ onefetch bereits vorhanden"
fi

# ── 17. Konfig-Dateien kopieren ───────────────────────
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo ""
echo "  → Konfigurationsdateien einrichten..."
cp "$SCRIPT_DIR/dotfiles/.zshrc"              "$HOME/.zshrc"
cp "$SCRIPT_DIR/dotfiles/.p10k.zsh"           "$HOME/.p10k.zsh"
cp "$SCRIPT_DIR/dotfiles/.terminal_banner.py" "$HOME/.terminal_banner.py"

# glow pink theme
mkdir -p "$HOME/.config/glow"
cp "$SCRIPT_DIR/config/glow/pink.json" "$HOME/.config/glow/pink.json"
sed "s|/home/amira|$HOME|g" "$SCRIPT_DIR/config/glow/glow.yml" > "$HOME/.config/glow/glow.yml"
echo "  ✓ glow pink theme eingerichtet"

# exec zsh am Ende von .bashrc
if ! grep -q "exec zsh" "$HOME/.bashrc"; then
  echo ""                            >> "$HOME/.bashrc"
  echo "export SHELL=\$(which zsh)" >> "$HOME/.bashrc"
  echo "[ -t 1 ] && exec zsh"       >> "$HOME/.bashrc"
fi

echo ""
echo "  ✓ Alles installiert! Nächste Schritte:"
echo "    1. MesloLGS NF Font auf Windows installieren (fonts/ Ordner)"
echo "    2. In Windows Terminal: Schriftart auf 'MesloLGS NF' setzen"
echo "    3. Terminal neu starten"
echo "    4. glow CHEATSHEET.md  — alle Befehle schön anzeigen"
echo ""
