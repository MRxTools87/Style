#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail

if [[ -z "${PREFIX:-}" || "$PREFIX" != *com.termux* ]]; then
  echo "[ERROR] Jalankan skrip ini dari Termux."
  exit 1
fi

FISH_CONF="$HOME/.config/fish/conf.d/memekz.fish"
STARSHIP_CONF="$HOME/.config/starship.toml"
STARSHIP_INIT="$HOME/.config/fish/conf.d/starship-init.fish"

rm -f "$FISH_CONF" "$STARSHIP_CONF" "$STARSHIP_INIT"

echo "Konfigurasi MEMEKZ dihapus."
echo "Fish dan Starship tidak dihapus."
echo "Jika ingin mengembalikan konfigurasi lama, salin file dari folder:"
echo "$HOME/.config/memekz-backup-*"
