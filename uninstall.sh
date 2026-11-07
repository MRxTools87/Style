#!/data/data/com.termux/files/usr/bin/bash
set -eu

FILE="$HOME/.config/fish/conf.d/introvert.fish"

CYAN='\033[1;36m'
RESET='\033[0m'

printf "${CYAN}"
echo "╔════════════════════════════════════╗"
echo "║    TERMUXVOID INTROVERT REMOVER    ║"
echo "╚════════════════════════════════════╝"
printf "${RESET}\n"

if [ -f "$FILE" ]; then
    rm "$FILE"
    echo "Tema TermuxVoid Introvert berhasil dihapus."
else
    echo "File tema tidak ditemukan."
fi

echo "Konfigurasi Fish pribadi dan alias Anda tetap aman."
echo "Selesai✌️."
