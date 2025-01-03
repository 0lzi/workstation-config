#! /usr/bin/env bash

echo "Starting inital setup"

## GENERATED BY CHATGPT

# Check if an argument was provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 [desktop|laptop]"
    exit 1
fi

# Convert the argument to lowercase to ensure case-insensitive comparison
device_type=$(echo "$1" | tr '[:upper:]' '[:lower:]')

# List of packages to install
packages=(
  curl
  git
  pipx
  wget
)

# Function to install packages using apt
install_with_apt() {
  echo "Using apt to install packages..."
  sudo apt update
  sudo apt upgrade -y
  sudo apt install -y "${packages[@]}"
}

# Function to install packages using dnf
install_with_dnf() {
  echo "Using dnf to install packages..."
  sudo dnf install -y "${packages[@]}"
}

# Detect package manager and install packages
if command -v apt >/dev/null 2>&1; then
  install_with_apt
elif command -v dnf >/dev/null 2>&1; then
  install_with_dnf
else
  echo "Neither apt nor dnf found. Exiting."
  exit 1
fi

# Install Ansible with pipx
echo "Installing Ansible with pipx"
pipx ensurepath
pipx install --include-deps ansible

# Add user to passwordless sudo
echo "Adding user to passwordless sudo"
sudo echo "$USER ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$USER

# Initial Ansible pull
# Check the input and run the corresponding playbook
if [ "$device_type" == "desktop" ]; then
    echo "Running pull for desktop..."
    ansible-pull -U https://github.com/0lzi/workstation-config.git -e 'desktop=true'
elif [ "$device_type" == "laptop" ]; then
    echo "Running pull for laptop..."
    ansible-pull -U https://github.com/0lzi/workstation-config.git
else
    echo "Invalid input. Please enter either 'desktop' or 'laptop'."
    exit 1
fi

echo "Reboot may be required..."
