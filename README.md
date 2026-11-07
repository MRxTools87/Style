# MEMEKZ Ubuntu Powerline — Termux

Tema Fish + Starship untuk Termux dengan tampilan Ubuntu Powerline.

## Fitur

- Prompt MEMEKZ@JANDA dengan segmen warna ungu, oranye, dan biru.
- Direktori dengan ikon folder, Git branch, dan status Git.
- Simbol prompt `➜❯` berwarna biru muda.
- Fish greeting dan helper `tv-help`, `tv-info`, `tv-ip`, `tv-update`, `tv-clean`.
- Panduan Nerd Font opsional untuk memastikan ikon dan simbol tampil benar.

## Struktur proyek

- `install.sh` — memasang Fish, Starship, greeting, helper, dan prompt.
- `uninstall.sh` — menghapus konfigurasi MEMEKZ (Fish dan Starship tidak dihapus).
- `config/introvert.fish` — greeting dan helper Fish.
- `config/starship.toml` — konfigurasi prompt.
- `fonts/README.md` — rekomendasi dan panduan pemasangan font.

## Instalasi

Jalankan dari Termux:

```bash
pkg install curl -y
curl -fsSL https://raw.githubusercontent.com/MRxTools87/Style/Style-v.1/install.sh -o install.sh
chmod +x install.sh
bash install.sh
```

Setelah instalasi selesai, mulai ulang shell:

```fish
exec fish
```

## Font (opsional, direkomendasikan)

Gunakan **JetBrainsMono Nerd Font Mono** agar ikon folder ``, ikon Git, dan pemisah Powerline `` memiliki glyph yang sesuai.

Panduan lengkap ada di [fonts/README.md](fonts/README.md). Font hanya menambah dukungan simbol; font tidak mengubah warna, susunan, teks, atau desain prompt.

## Catatan

- Prompt Starship disimpan di `~/.config/starship.toml`.
- Inisialisasi Starship untuk Fish berada di `~/.config/fish/conf.d/starship-init.fish`.
- Installer membuat backup konfigurasi lama di `~/.config/memekz-backup-*`.
- Jika ikon tampil sebagai kotak atau tanda tanya, pasang Nerd Font dan pilih font tersebut di pengaturan Termux.
- Jangan mengedit konfigurasi prompt jika ingin mempertahankan desain bawaan MEMEKZ.

## Uninstall

```bash
bash uninstall.sh
```
