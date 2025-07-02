{ config, pkgs, ... }:

{
  home.username = "mikke";
  home.homeDirectory = "/home/mikke";

  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.05"; # Please read the comment before changing.

  home.packages = with pkgs; [
    python3Full
    python312Packages.pip
    ffmpeg_6
    gcc
    openjdk17
    yt-dlp
    zoxide
    fzf
  ];


  home.file = {

  };


  home.sessionVariables.EDITOR = "code";
  

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;


  programs.zsh.enable = true;
  programs.starship.enable = true;
}
