
# ==========================================
# MEMEKZ TERMINAL
# CYBER YELLOW EDITION
# ==========================================

#intro
function fish_greeting
    clear

    # DEVICE INFORMATION
    set device (getprop ro.product.model)
    set ram (free -h | awk '/Mem:/ {print $2}')
    set arm (getprop ro.product.cpu.abi)

    # BANNER POSITION
    set left 0

    # MEMEKZ UNIFIED BANNER
    set_color --bold yellow

    echo '╔══════════════════════════════════════════════╗'
    echo '║  ███╗ ███╗ █████╗ ██████╗ ███████╗██╗  ██╗   ║'
    echo '║  ████╗████║██╔══██╗██╔══██╗██╔════╝██║ ██╔╝  ║'
    echo '║  ██╔██╔██║███████║██████╔╝█████╗  █████╔╝    ║'
    echo '║  ██║╚═╝██║██╔══██║██╔══██╗██╔══╝  ██╔═██╗    ║'
    echo '║  ██║   ██║██║  ██║██║  ██║███████╗██║  ██╗   ║'
    echo '║  ╚═╝   ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝   ║'
    echo '╠══════════════════════════════════════════════╣'
set_color --bold cyan
    printf '        ║ %-20s ║\n' 'M E M E K Z  T E R M I N A L'
set_color --bold yellow
    echo '╠══════════════════════════════════════════════╣'
    echo ''
end

# ==========================================
# MEMEKZ CUSTOM PROMPT
# ==========================================

function fish_prompt
    set_color --bold yellow
    echo -n '┌─['

    set_color --bold white
    echo -n (whoami)

    set_color --bold yellow
    echo -n '@MEMEKZ]─['

    set_color --bold green
    echo -n (prompt_pwd)

    set_color --bold yellow
    echo ']'

    set_color --bold cyan
    echo -n '└─❯ '

    set_color normal
end

# Help
function tv-help
    set_color cyan
    echo "TERMUXVOID COMMAND CENTER"
    set_color normal
    echo "tv-help    - Command list"
    echo "tv-update  - Update packages"
    echo "tv-clean   - Clean cache"
    echo "tv-info    - Device information"
    echo "tv-ip      - Public IP"
end

# Update packages
function tv-update
    pkg update -y; and pkg upgrade -y
end

# Clean cache
function tv-clean
    pkg clean
    apt autoremove -y
end

# System information
function tv-info
    echo "TERMUXVOID SYSTEM INFO"
    echo "User    : "(whoami)
    echo "Android : "(getprop ro.build.version.release)
    echo "Device  : "(getprop ro.product.model)
    echo "Shell   : "(fish --version)
end

# Public IP
function tv-ip
    curl -s https://api.ipify.org
    echo ""
end

# No generic aliases are modified.
# Existing personal aliases remain untouched.

# End TermuxVoid Introvert
