#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/yourusername/your-nix-config.git"
CLONE_DIR="$HOME/home-manager"

echo "Installing Nix..."
curl -fsSL https://install.determinate.systems/nix | sh -s -- install --determinate

echo "Loading Nix environment..."
source "$HOME/.nix-profile/etc/profile.d/nix.sh"

echo "Cloning config..."
git clone "$REPO_URL" "$CLONE_DIR"

echo "Switching config..."
nix run home-manager/release-23.11 -- switch --flake "$CLONE_DIR#$(whoami)"

echo "Done!"

