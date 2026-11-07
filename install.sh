#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail

REPO="MRxTools87/Style"
BRANCH="Style-v.1"
BASE_URL="https://raw.githubusercontent.com/${REPO}/${BRANCH}"

if [[ -z "${PREFIX:-}" || "$PREFIX" != *com.termux* ]]; then
  echo "[ERROR] Jalankan installer ini dari Termux."
  exit 1
fi

echo "== MEMEKZ Ubuntu Powerline installer =="

pkg update -y
pkg install fish starship curl -y

mkdir -p "$HOME/.config/fish/conf.d" "$HOME/.config"
BACKUP_DIR="$HOME/.config/memekz-backup-$(date +%Y%m%d-%H%M%S)"
mkdir -p "$BACKUP_DIR"

for f in "$HOME/.config/fish/config.fish" \
         "$HOME/.config/fish/conf.d/memekz.fish" \
         "$HOME/.config/starship.toml"; do
  if [[ -f "$f" ]]; then
    cp -p "$f" "$BACKUP_DIR/"
  fi
done

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

curl -fL "$BASE_URL/config/introvert.fish" -o "$TMP/memekz.fish"
curl -fL "$BASE_URL/config/starship.toml" -o "$TMP/starship.toml"

install -m 644 "$TMP/memekz.fish" "$HOME/.config/fish/conf.d/memekz.fish"
install -m 644 "$TMP/starship.toml" "$HOME/.config/starship.toml"

cat > "$HOME/.config/fish/conf.d/starship-init.fish" <<'FISH'
if status is-interactive
    starship init fish | source
end
FISH

if ! grep -q 'exec fish' "$HOME/.bashrc" 2>/dev/null; then
  printf '\n# MEMEKZ: start Fish automatically\nif [ -x "$PREFIX/bin/fish" ] && [ -z "$FISH_VERSION" ]; then\n  exec fish\nfi\n' >> "$HOME/.bashrc"
fi

echo
echo "[SUCCESS] MEMEKZ Ubuntu Powerline berhasil dipasang."
echo "Backup konfigurasi lama: $BACKUP_DIR"
echo "Tutup dan buka kembali Termux, atau jalankan: exec fish"
