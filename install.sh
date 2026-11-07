#!/data/data/com.termux/files/usr/bin/bash
set -Eeuo pipefail

REPO="MRxTools87/Style"
BRANCH="main"
FILE="introvert.fish"
CONFIG_DIR="$HOME/.config/fish/conf.d"
TARGET="$CONFIG_DIR/$FILE"
URL="https://raw.githubusercontent.com/$REPO/$BRANCH/config/$FILE"

CYAN='\033[1;36m'
RESET='\033[0m'

printf "${CYAN}"
echo "╔════════════════════════════════════╗"
echo "║     TERMUXVOID INTROVERT INSTALL   ║"
echo "║          CYBER • CYAN              ║"
echo "╚════════════════════════════════════╝"
printf "${RESET}\n"

if ! command -v pkg >/dev/null 2>&1; then
    echo "Error: Script ini hanya untuk Termux."
    exit 1
fi

echo "[1/4] Memasang Fish dan curl..."
pkg update -y
pkg install fish curl -y

echo "[2/4] Menyiapkan direktori..."
mkdir -p "$CONFIG_DIR"

echo "[3/4] Mengunduh konfigurasi..."
TMP_FILE="$(mktemp)"
trap 'rm -f "$TMP_FILE"' EXIT

if ! curl -fsSL "$URL" -o "$TMP_FILE"; then
    echo "Gagal mengunduh konfigurasi."
    echo "Pastikan file config/$FILE sudah ada di GitHub."
    exit 1
fi

if ! fish -n "$TMP_FILE"; then
    echo "Konfigurasi Fish memiliki kesalahan sintaks."
    exit 1
fi

if [ -f "$TARGET" ]; then
    BACKUP="$TARGET.backup.$(date +%Y%m%d-%H%M%S)"
    cp "$TARGET" "$BACKUP"
    echo "Backup konfigurasi lama: $BACKUP"
fi

cp "$TMP_FILE" "$TARGET"

echo "[4/4] Instalasi selesai!"
echo
echo "Jalankan Fish dengan perintah:"
echo "fish"
echo
echo "Untuk bantuan:"
echo "tv-help"
