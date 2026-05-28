# ══════════════════════════════════════════════════════════════════════════════
#  Amira's .zshrc  ♡
# ══════════════════════════════════════════════════════════════════════════════

# ── Terminal banner (muss VOR instant prompt stehen) ──────────────────────────
[ -f ~/.terminal_banner.py ] && python3 ~/.terminal_banner.py

# ── Powerlevel10k instant prompt ──────────────────────────────────────────────
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ── Oh My Zsh ─────────────────────────────────────────────────────────────────
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  fzf
)

source $ZSH/oh-my-zsh.sh

# ── PATH ──────────────────────────────────────────────────────────────────────
export PATH="$HOME/.local/bin:$PATH"

# ── Aliases ───────────────────────────────────────────────────────────────────
alias cat='bat --paging=never'
alias ll='ls -lah --color=auto'
alias la='ls -A --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias grep='grep --color=auto'

# Projekt-Shortcuts ♡
alias proj='cd /mnt/c/Users/amira/_projekte'
alias bonadurer='cd /mnt/c/Users/amira/_projekte/openagentur/Bonadurer'

# ── eza (besseres ls) — pastell-rosa Farbpalette ─────────────────────────────
#   218=soft pink  213=medium pink  219=light pink  183=lavender
#   175=dark rose  220=gold  245=muted grey  224=peach  181=mauve
export EZA_COLORS="\
di=1;38;5;213:\
ex=38;5;183:\
ln=38;5;219:\
or=38;5;175:\
sn=38;5;220:\
sb=38;5;245:\
da=38;5;245:\
uu=38;5;218:\
gu=38;5;218:\
ur=38;5;218:uw=38;5;213:ux=38;5;183:ue=38;5;183:\
gr=38;5;224:gw=38;5;219:gx=38;5;225:\
tr=38;5;181:tw=38;5;175:tx=38;5;225:\
gm=38;5;220:ga=38;5;183:gd=38;5;213:gt=38;5;245:gi=38;5;245:\
*.md=38;5;218:*.txt=38;5;225:*.json=38;5;219:\
*.js=38;5;220:*.ts=38;5;220:*.py=38;5;183:*.sh=38;5;213:\
*.zip=38;5;175:*.tar=38;5;175:*.gz=38;5;175:*.7z=38;5;175:\
*.png=38;5;225:*.jpg=38;5;225:*.gif=38;5;225:*.svg=38;5;219:\
*.mp3=38;5;219:*.mp4=38;5;219:*.pdf=38;5;218"

alias ls='eza --icons'
alias ll='eza -lah --icons --git'
alias la='eza -a --icons'
alias lt='eza --tree --icons'

# ── lazygit ───────────────────────────────────────────────────────────────────
alias lg='lazygit'

# ── zoxide (smarter cd) ───────────────────────────────────────────────────────
eval "$(zoxide init zsh)"

# ── fzf ───────────────────────────────────────────────────────────────────────
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="
  --color=fg:#3A3128,bg:#F2CEDA,hl:#C2547A
  --color=fg+:#1C1814,bg+:#E8B8C8,hl+:#C2547A
  --color=info:#E8829A,prompt:#C2547A,pointer:#E8829A
  --color=marker:#E8829A,spinner:#E8829A,header:#C2547A
  --color=separator:#D4B8E0,border:#D4B8E0,scrollbar:#D4B8E0
  --border rounded --prompt '❯ ' --pointer '♡'
"

# ── Autosuggestions ───────────────────────────────────────────────────────────
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#C9BFA8'

# ── Syntax Highlighting Farben ────────────────────────────────────────────────
#   183=lavendel  218=soft pink  213=medium pink  219=light pink
#   175=dark rose  245=muted grey  225=very light pink  224=peach
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=183'           # lavendel
ZSH_HIGHLIGHT_STYLES[alias]='fg=218'             # soft pink
ZSH_HIGHLIGHT_STYLES[builtin]='fg=219'           # light pink
ZSH_HIGHLIGHT_STYLES[function]='fg=183'          # lavendel
ZSH_HIGHLIGHT_STYLES[path]='fg=245'              # muted grey
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=175'     # dark rose (statt hartem rot)
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=245'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=245'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=225'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=225'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=225'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=213'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=220'       # gold
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=213'  # medium pink
ZSH_HIGHLIGHT_STYLES[globbing]='fg=219'          # light pink

# ── History ───────────────────────────────────────────────────────────────────
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

# ── Powerlevel10k config ──────────────────────────────────────────────────────
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
