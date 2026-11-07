# MEMEKZ Ubuntu Powerline - Fish greeting and helper commands
# Starship owns the prompt. This file intentionally does not define fish_prompt.

function fish_greeting
    set_color brcyan
    echo "╭──────────────────────────────────────────────╮"
    set_color yellow
    echo "│              MEMEKZ TERMINAL                 │"
    set_color brcyan
    echo "╰──────────────────────────────────────────────╯"
    set_color normal
    echo "Ketik tv-help untuk melihat perintah bantuan."
end

function tv-help
    echo "MEMEKZ - daftar perintah"
    echo "  tv-help    : tampilkan bantuan"
    echo "  tv-info    : informasi sistem"
    echo "  tv-ip      : tampilkan alamat IP publik"
    echo "  tv-update  : perbarui paket Termux"
    echo "  tv-clean   : bersihkan cache paket"
end

function tv-info
    echo "== Informasi Termux =="
    echo "User      : "(whoami)
    echo "Hostname  : "(hostname)
    echo "Direktori : $PWD"
    echo "Shell     : "(basename $SHELL)
    echo "Android   : "(getprop ro.build.version.release 2>/dev/null)
    echo "Model     : "(getprop ro.product.model 2>/dev/null)
end

function tv-ip
    if type -q curl
        curl -fsS https://api.ipify.org
        echo
    else
        echo "curl belum terpasang. Jalankan: pkg install curl"
    end
end

function tv-update
    pkg update -y; and pkg upgrade -y
end

function tv-clean
    pkg clean
    echo "Cache paket dibersihkan."
end
