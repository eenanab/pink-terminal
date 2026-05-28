# 🌸 Terminal Cheatsheet

> All tools and commands at a glance.
> Render beautifully in terminal with: `glow CHEATSHEET.md`

---

## Navigation & Files

### eza — better `ls`
```bash
ls            # files with icons
ll            # details + git status + icons
la            # all files including hidden
lt            # tree view
lt --level=2  # tree, 2 levels deep
```

### zoxide — smarter `cd`
```bash
z projects        # jump to folder containing "projects"
zi                # interactive selection with fzf
```

### fd — modern `find`
```bash
fd ".php"             # all PHP files in current folder
fd -e css             # all CSS files
fd "style" src/       # search "style" in src/
fd -t d "components"  # only folders named "components"
```

---

## Searching

### ripgrep — blazing fast grep
```bash
rg "searchterm"            # recursive in current folder
rg "wp_query" ~/projects   # in a specific folder
rg -l "elementor"          # only print filenames
rg -i "Login"              # case insensitive
rg "TODO" --type php       # only in PHP files
```

### fzf — fuzzy finder
```bash
Ctrl+R    # search command history
Ctrl+T    # fuzzy-search a file and insert path
Alt+C     # change directory with fzf
```

---

## Git

### lazygit — visual git UI
```bash
lg        # open lazygit
```
**In lazygit:**
- `Space` — stage / unstage file
- `c` — commit
- `p` — push
- `P` — pull
- `b` — branch menu
- `q` — quit

### delta — beautiful git diffs
Runs automatically in the background. All `git diff` and `git log -p` output
gets syntax highlighting automatically.
```bash
git diff        # delta kicks in automatically
git log -p      # here too
```

### onefetch — repo overview
```bash
onefetch        # run inside a git repo → pretty statistics
```

---

## Viewing Files

### bat — better `cat`
```bash
cat file.php      # (alias for bat) with syntax highlighting
bat file.css      # call directly
bat -n file.js    # with line numbers
```

### glow — render markdown
```bash
glow README.md      # render markdown in terminal
glow CHEATSHEET.md  # this document!
glow .              # list all .md files in folder
```

---

## System

### btop — system monitor
```bash
btop        # open
```
- `q` — quit
- `f` — search process
- Mouse works too!

### tldr — simplified help
```bash
tldr tar          # short examples for tar
tldr git          # git quick reference
tldr curl         # curl examples
tldr fd           # fd examples
```

---

## File Transfer

### croc — send files between machines
```bash
# On the sender:
croc send file.zip
# → outputs a code, e.g. "correct-horse-battery"

# On the receiver:
croc correct-horse-battery
```
Both machines must be online simultaneously. No cloud middleman, end-to-end encrypted.

---

## Keyboard Shortcuts

| Shortcut | Action |
|---|---|
| `Ctrl+R` | Search history (fzf) |
| `Ctrl+T` | Search files (fzf) |
| `Ctrl+L` | Clear terminal |
| `Ctrl+A` | Move cursor to start |
| `Ctrl+E` | Move cursor to end |
| `Ctrl+U` | Delete line |
| `Alt+.`  | Insert last argument |
| `Tab`    | Autocomplete (zsh-autosuggestions) |
| `→`      | Accept suggestion |

---

## Personalizing Claude Code ♡

Claude Code can be personalized with a `CLAUDE.md` file.
Place it at `~/.claude/CLAUDE.md` to give Claude instructions on how to behave.

### Enable kaomojis

Create or edit `~/.claude/CLAUDE.md`:
```bash
nano ~/.claude/CLAUDE.md
```

Contents:
```markdown
# My Claude Settings

## Style
- Reply in English
- Sprinkle in kaomojis occasionally, e.g. (˶ᵔ ᵕ ᵔ˶) (◕‿◕✿) ٩(˘◡˘)۶
- Keep answers short and precise
- No long explanations unless necessary

## Behavior
- Ask before making large changes
- Show me commands I can run myself
```

> **Tip:** The more you tell Claude about your preferences, the better it gets —
> it remembers everything across sessions!

---

*Terminal Setup by Amira ♡ — zsh + powerlevel10k + 16 great tools*
