# Font untuk MEMEKZ Ubuntu Powerline

## Rekomendasi

**JetBrainsMono Nerd Font Mono** adalah pilihan utama untuk Termux. Varian Mono cocok untuk terminal karena lebar glyph dibuat konsisten. Font ini menyediakan ikon folder, ikon Git, dan simbol Powerline yang dipakai konfigurasi Starship.

Font bersifat opsional. Memasangnya tidak mengubah desain prompt, warna, teks, atau susunan segmen; hanya memastikan simbol memiliki bentuk glyph yang benar.

## Unduh

Unduh arsip resmi JetBrainsMono dari Nerd Fonts:

https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip

Halaman rilis resmi:

https://github.com/ryanoasis/nerd-fonts/releases

## Pasang di Termux (Android, tanpa root)

1. Unduh dan ekstrak `JetBrainsMono.zip`.
2. Cari file **JetBrainsMonoNerdFontMono-Regular.ttf** di hasil ekstrak.
3. Salin file itu ke penyimpanan perangkat, misalnya folder Download.
4. Di Termux jalankan:

```bash
termux-setup-storage
mkdir -p ~/.termux
cp ~/storage/downloads/JetBrainsMonoNerdFontMono-Regular.ttf ~/.termux/font.ttf
termux-reload-settings
```

Jika nama file hasil ekstrak berbeda, sesuaikan nama pada perintah `cp` dengan nama file yang benar.

## Pasang manual

Simpan font dengan nama `font.ttf` di:

```text
~/.termux/font.ttf
```

Lalu jalankan:

```bash
termux-reload-settings
```

Jika perubahan belum terlihat, tutup lalu buka kembali sesi Termux.

## Catatan

- Jangan mengubah `config/starship.toml` hanya untuk memasang font.
- Font tidak mengatur warna terminal; warna prompt tetap berasal dari konfigurasi Starship.
- Lisensi dan distribusi font mengikuti proyek Nerd Fonts dan font upstream.
- 
