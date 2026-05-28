# ♡ Amira's Terminal Cheatsheet

> Alle Tools und Befehle auf einen Blick.
> Im Terminal schön anzeigen mit: `glow CHEATSHEET.md`

---

## Navigation & Dateien

### eza — besseres `ls`
```bash
ls          # Dateien mit Icons
ll          # Details + Git-Status + Icons
la          # alle Dateien inkl. versteckte
lt          # Baum-Ansicht
lt --level=2  # Baum nur 2 Ebenen tief
```

### zoxide — smarter `cd`
```bash
z projekte        # springt in den Ordner der "projekte" enthält
z bon             # springt nach Bonadurer (nach erstem Besuch)
zi                # interaktive Auswahl mit fzf
```

### fd — modernes `find`
```bash
fd ".php"             # alle PHP-Dateien im aktuellen Ordner
fd -e css             # alle CSS-Dateien
fd "style" src/       # "style" in src/ suchen
fd -t d "components"  # nur Ordner mit dem Namen "components"
```

---

## Suchen

### ripgrep — blitzschnelles grep
```bash
rg "suchbegriff"           # rekursiv im aktuellen Ordner
rg "wp_query" ~/Projekte   # in einem bestimmten Ordner
rg -l "elementor"          # nur Dateinamen ausgeben
rg -i "Login"              # Groß-/Kleinschreibung ignorieren
rg "TODO" --type php       # nur in PHP-Dateien
```

### fzf — fuzzy finder
```bash
Ctrl+R    # History durchsuchen
Ctrl+T    # Datei fuzzy-suchen und einfügen
Alt+C     # Ordner wechseln mit fzf
```

---

## Git

### lazygit — visuelle Git-UI
```bash
lg        # lazygit öffnen
```
**In lazygit:**
- `Space` — Datei stagen/unstagen
- `c` — commit
- `p` — push
- `P` — pull
- `b` — Branch-Menü
- `q` — beenden

### delta — schöne git diffs
Läuft automatisch im Hintergrund. Alle `git diff` und `git log -p` Ausgaben
sehen jetzt automatisch mit Syntax-Highlighting aus.
```bash
git diff          # delta wird automatisch genutzt
git log -p        # auch hier
```

### onefetch — Repo-Übersicht
```bash
onefetch          # im git-Repo ausführen → schöne Statistik
```

---

## Dateien anzeigen

### bat — besseres `cat`
```bash
cat datei.php       # (alias auf bat) mit Syntax-Highlighting
bat datei.css       # direkt aufrufen
bat -n datei.js     # mit Zeilennummern
```

### glow — Markdown rendern
```bash
glow README.md      # Markdown schön im Terminal anzeigen
glow CHEATSHEET.md  # dieses Dokument!
glow .              # alle .md Dateien im Ordner auflisten
```

---

## System

### btop — Systemmonitor
```bash
btop        # öffnen
```
- `q` — beenden
- `f` — Prozess suchen
- Maus funktioniert auch!

### tldr — vereinfachte Hilfe
```bash
tldr tar          # kurze Beispiele für tar
tldr git          # git Kurzreferenz
tldr curl         # curl Beispiele
tldr fd           # fd Beispiele
```

---

## Dateitransfer

### croc — Dateien zwischen Rechnern senden
```bash
# Auf dem Sender-Rechner:
croc send datei.zip
# → gibt einen Code aus, z.B. "correct-horse-battery"

# Auf dem Empfänger-Rechner:
croc correct-horse-battery
```
Beide Rechner müssen gleichzeitig online sein. Kein Cloud-Umweg, Ende-zu-Ende verschlüsselt.

---

## Projekt-Shortcuts

```bash
proj        # cd /mnt/c/Users/amira/_projekte
bonadurer   # cd .../Bonadurer
```

---

## Claude Code aufhübschen ♡

Claude Code kann mit einer `CLAUDE.md` Datei personalisiert werden.
Diese Datei liegt in `~/.claude/CLAUDE.md` und gibt Claude Anweisungen
wie er sich verhalten soll.

### Kaomojis aktivieren

Erstelle oder bearbeite `~/.claude/CLAUDE.md`:

```bash
nano ~/.claude/CLAUDE.md
```

Inhalt:
```markdown
# Meine Claude-Einstellungen

## Stil
- Antworte auf Deutsch
- Streue gelegentlich Kaomojis ein, z.B. (˶ᵔ ᵕ ᵔ˶) (◕‿◕✿) ٩(˘◡˘)۶
- Halte Antworten kurz und präzise
- Keine langen Erklärungen wenn nicht nötig

## Verhalten
- Frag nach bevor du große Änderungen machst
- Zeig mir Befehle die ich selbst ausführen kann
```

### Sprache & Ton anpassen

Weitere nützliche Einstellungen für `CLAUDE.md`:
```markdown
## Projekte
- Bonadurer: WordPress + Elementor Pro Projekt unter ~/Bonadurer
- Sprache im Code: Englisch, Kommentare: Deutsch ok

## Was ich nicht mag
- Keine langen Zusammenfassungen am Ende
- Nicht jeden Schritt erklären den du machst
```

> **Tipp:** Je mehr du Claude über deine Vorlieben sagst, desto besser
> wird er — er merkt sich alles über Sessions hinweg!

---

## Tastenkürzel Terminal

| Kürzel | Aktion |
|--------|--------|
| `Ctrl+R` | History suchen (fzf) |
| `Ctrl+T` | Datei suchen (fzf) |
| `Ctrl+L` | Terminal leeren |
| `Ctrl+A` | Cursor zum Anfang |
| `Ctrl+E` | Cursor zum Ende |
| `Ctrl+U` | Zeile löschen |
| `Alt+.`  | Letztes Argument einfügen |
| `Tab`    | Autocomplete (zsh-autosuggestions) |
| `→`      | Autosuggestion übernehmen |

---

*Terminal Setup by Amira ♡ — zsh + powerlevel10k + 16 coole Tools*
