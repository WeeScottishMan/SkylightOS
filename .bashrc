#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Warn about reboot needed after Arch kernel updates
installed_kernel=$(pacman -Q linux 2>/dev/null | cut -d " " -f 2)
running_kernel=$(uname -r)

if [ -n "$installed_kernel" ] && [ "$installed_kernel" != "$running_kernel" ]; then
  HIGHLIGHT='\033[1;33m'
  NC='\033[0m'
  echo -e "${HIGHLIGHT}Linux kernel updated, reboot recommended.${NC}"
  echo "Installed kernel: $installed_kernel"
  echo "Running kernel:   $running_kernel"
  echo ""
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias search='paru -Ss'
alias magic='paru -S'
alias levelup='paru -Syu'
alias kaboom='paru -Rsn'

PS1=' \[\e[92;1m\](\[\e[0m\] \[\e[96;1m\]󰀄\[\e[0m\] \[\e[92;1m\])\[\e[0m\] \[\e[92;1m\]\u\[\e[96m\]@\[\e[92m\]\h\[\e[0m\] [\[\e[96;1m\]\W\[\e[0m\]] '

fastfetch
