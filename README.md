# MEMEKZ Ubuntu Powerline — Termux

Tema Fish + Starship bergaya Ubuntu Powerline untuk Termux.

## Isi proyek

- `install.sh` — memasang Fish, Starship, konfigurasi greeting, helper, dan prompt.
- `uninstall.sh` — menghapus konfigurasi MEMEKZ (tidak menghapus aplikasi Fish/Starship).
- `config/introvert.fish` — greeting dan perintah bantuan `tv-*`.
- `config/starship.toml` — prompt username, hostname, direktori, Git, dan simbol `➜›`.

## Cara memasang dari Termux

Jika file proyek sudah berada di penyimpanan perangkat, masuk ke folder proyek lalu jalankan:

```bash
chmod +x install.sh
bash install.sh
```

Atau setelah proyek diunggah ke GitHub, jalankan perintah berikut:

```bash
pkg install curl -y
curl -fsSL https://raw.githubusercontent.com/MRxTools87/Style/Style-v.1/install.sh -o install.sh
chmod +x install.sh
bash install.sh
```

## Cara menghapus konfigurasi

```bash
chmod +x uninstall.sh
bash uninstall.sh
```

## Catatan

- Jalankan installer dari Termux.
- Installer membuat cadangan konfigurasi yang ditemukan di `~/.config/memekz-backup-*`.
- Fish dan Starship tidak dihapus oleh `uninstall.sh`.
- Untuk mengganti identitas prompt, edit bagian `[username]` dan `[hostname]` pada `config/starship.toml`.
- Warna simbol prompt saat ini biru.
