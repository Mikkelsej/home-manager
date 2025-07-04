{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;

  # Enable Fish shell
  programs.fish.enable = true;

  # Set Fish as the default shell (optional)
  programs.fish.loginShellInit = ''
    set -gx NIX_PATH ${builtins.getEnv "NIX_PATH"}
    source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
  '';

  # Optional: configure Fish plugins and environment
  programs.fish.shellInit = ''
    set -gx EDITOR nvim
    set -gx PATH $HOME/.local/bin $PATH
  '';

  # Example of installing packages via Home Manager
  home.packages = with pkgs; [
    git
    starship
    neovim
  ];

  # Optional: Use Starship prompt
  programs.starship.enable = true;
}
