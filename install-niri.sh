#!/usr/bin/env bash
#
# Lumo – bulk‑install script for a development / Wayland desktop environment
# -------------------------------------------------------------------------
# Run this script as a regular user; it will invoke sudo where needed.
# -------------------------------------------------------------------------

set -euo pipefail # safer script execution

# -------------------------------------------------------------------------
# Helper: run a command with sudo, printing a friendly heading first
# -------------------------------------------------------------------------
run_sudo() {
  echo -e "\n=== Installing: $* ==="
  sudo apt-get install -y "$@"
}

# -------------------------------------------------------------------------
# 1️⃣ Update package index
# -------------------------------------------------------------------------
echo "Updating package lists…"
sudo apt-get update -y

# -------------------------------------------------------------------------
# 2️⃣ Core development tools & libraries
# -------------------------------------------------------------------------
run_sudo \
  git curl gcc clang \
  libudev-dev libgbm-dev libxkbcommon-dev libegl1-mesa-dev \
  libwayland-dev libinput-dev libdbus-1-dev libsystemd-dev \
  libseat-dev libpipewire-0.3-dev libpango1.0-dev libdisplay-info-dev

# -------------------------------------------------------------------------
# 3️⃣ Wayland compositor utilities & UI helpers
# -------------------------------------------------------------------------
run_sudo \
  fuzzel waybar alacritty firefox \
  mako-notifier swaylock swaybg swayidle \
  xdg-desktop-portal-gtk xdg-desktop-portal-gnome \
  gnome-keyring neovim libreoffice \
  libfuse2 \
  xcb libxcb-cursor-dev clang xwayland

# -------------------------------------------------------------------------
# 4️⃣ Additional desktop / productivity apps
# -------------------------------------------------------------------------
run_sudo \
  git curl firefox-esr chromium swappy grim slurp zsh \
  fonts-font-awesome waybar wl-clipboard virt-manager \
  htop fastfetch dnsutils starship fzf tmux ripgrep \
  plocate filezilla gimp wget unzip zip lazygit fd-find \
  jq ncat python3 python3-pip python3-venv numbat

# -------------------------------------------------------------------------
# 5️⃣ Optional extras (feel free to comment out anything you don’t need)
# -------------------------------------------------------------------------
# run_sudo <any additional packages you want here>

echo -e "\nAll requested packages have been installed successfully!"
