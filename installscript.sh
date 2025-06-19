#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/Mikkelsej/wsl-nix.git"
CLONE_DIR="$HOME/home-manager"

echo "Installing Nix..."
curl -fsSL https://install.determinate.systems/nix | sh -s -- install --determinate

echo "Loading Nix environment..."
. /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh

echo "Cloning config..."
git clone "$REPO_URL" "$CLONE_DIR"

echo "Switching config..."
nix run home-manager/release-23.11 -- switch --flake "$CLONE_DIR#$(whoami)"

echo "Done!"

