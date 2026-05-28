#!/usr/bin/env python3
# Terminal startup banner — Amira ♡
import sys, os, re
from datetime import datetime

# ── ANSI colours ──────────────────────────────────────────────────────────────
R   = '\033[0m'
B   = '\033[1m'
PK  = '\033[38;5;218m'
PK2 = '\033[38;5;213m'
PK3 = '\033[38;5;205m'
GR  = '\033[38;5;245m'
GD  = '\033[38;5;220m'
W   = '\033[38;5;231m'

def vlen(s):
    return len(re.sub(r'\033\[[^m]*m', '', s))

# ── Tagesgruss ────────────────────────────────────────────────────────────────
h = datetime.now().hour
if   h < 11: gruss = "Guten Morgen"
elif h < 14: gruss = "Guten Mittag"
elif h < 18: gruss = "Guten Nachmittag"
else:         gruss = "Guten Abend"

now      = datetime.now()
date     = now.strftime('%A, %d. %B %Y')
time_str = now.strftime('%H:%M')

# ── Hello Kitty braille art ───────────────────────────────────────────────────
KITTY = [
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⡤⠤⠤⠤⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⠞⠋⠁⠀⠀⠀⠀⠀⠀⠀⠉⠛⢦⣤⠶⠦⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⢀⣴⠞⢋⡽⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠃⠀⠀⠙⢶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⣰⠟⠁⠀⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡀⠀⠀⠉⠓⠦⣤⣤⣤⣤⣤⣤⣄⣀⠀",
    "⠀⠀⠀⠀⣠⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣷⡄⠀⠀⢻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣆",
    "⠀⠀⣠⠞⠁⠀⠀⣀⣠⣏⡀⠀⢠⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⠿⡃⠀⠀⠀⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡆",
    "⢀⡞⠁⠀⣠⠶⠛⠉⠉⠉⠙⢦⡸⣿⡿⠀⠀⠀⡄⢀⣀⣀⡶⠀⠀⠀⢀⡄⣀⠀⣢⠟⢦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠃",
    "⡞⠀⠀⠸⠁⠀⠀⠀⠀⠀⠀⠀⢳⢀⣠⠀⠀⠀⠉⠉⠀⠀⣀⠀⠀⠀⢀⣠⡴⠞⠁⠀⠀⠈⠓⠦⣄⣀⠀⠀⠀⠀⣀⣤⠞⠁",
    "⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠀⠁⠀⢀⣀⣀⡴⠋⢻⡉⠙⠾⡟⢿⣅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠙⠛⠉⠉⠀⠀⠀",
    "⠘⣦⡀⠀⠀⠀⠀⠀⠀⣀⣤⠞⢉⣹⣯⣍⣿⠉⠟⠀⠀⣸⠳⣄⡀⠀⠀⠙⢧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠈⠙⠒⠒⠒⠒⠚⠋⠁⠀⡴⠋⢀⡀⢠⡇⠀⠀⠀⠀⠃⠀⠀⠀⠀⠀⢀⡾⠋⢻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⢸⡀⠸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⢠⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣇⠀⠀⠉⠋⠻⣄⠀⠀⠀⠀⠀⣀⣠⣴⠞⠋⠳⠶⠞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠳⠦⢤⠤⠶⠋⠙⠳⣆⣀⣈⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
]

# ── AMIRA — Larry 3D font (pre-rendered) ──────────────────────────────────────
AMIRA = [
    " ______           ______   ____    ______     ",
    "/\\  _  \\  /'\\__/`\\/\\__  _\\ /\\  _`\\ /\\  _  \\   ",
    "\\ \\ \\L\\ \\/\\      \\/_/\\ \\/ \\ \\ \\L\\ \\ \\ \\L\\ \\  ",
    " \\ \\  __ \\ \\ \\__\\ \\ \\ \\ \\  \\ \\ ,  /\\ \\  __ \\ ",
    "  \\ \\ \\/\\ \\ \\ \\_/\\ \\ \\_\\ \\__\\ \\ \\\\ \\\\ \\ \\/\\ \\",
    "   \\ \\_\\ \\_\\ \\_\\\\ \\_\\/\\_____\\\\ \\_\\ \\_\\ \\_\\ \\_\\",
    "    \\/_/\\/_/\\/_/ \\/_/\\/_____/ \\/_/\\/ /\\/_/\\/_/",
    "                                               ",
]

# ── Info block ────────────────────────────────────────────────────────────────
INFO = [
    f"  {GR}♡  {gruss}, {B}{PK2}Amira{R}{GR}!{R}",
    f"  {GR}{date}{R}",
    f"  {GD}{time_str} Uhr{R}",
    f"  {GR}{os.uname().sysname} · zsh{R}",
]

# ── Responsive layout ─────────────────────────────────────────────────────────
GAP1 = 4
GAP2 = 3
MARGIN = 2

K_W = max(len(line) for line in KITTY)
A_W = max(len(line) for line in AMIRA)

try:
    cols = os.get_terminal_size().columns
except OSError:
    cols = 120

need_2 = MARGIN + K_W + GAP1 + A_W

A_BLOCK = [f"{PK3}{line}{R}" for line in AMIRA] + [""] + INFO

print()

if cols >= need_2:
    # Zwei Spalten: KITTY | AMIRA+INFO
    total = max(len(KITTY), len(A_BLOCK))
    for i in range(total):
        k = KITTY[i]   if i < len(KITTY)   else ""
        a = A_BLOCK[i] if i < len(A_BLOCK) else ""
        print(f"{'':>{MARGIN}}{PK2}{k}{R}{' ' * (K_W - len(k) + GAP1)}{a}")

else:
    # Nur AMIRA+INFO
    for line in A_BLOCK:
        print(f"{'':>{MARGIN}}{line}")

sep_len = min(70, cols - MARGIN - 2)
print()
print(f"{'':>{MARGIN}}{GR}{'─' * sep_len}{R}")
print()
