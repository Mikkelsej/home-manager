{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName  = "Mikkelsej";
    userEmail = "mikkel.sejdelin@gmail.com";

    config = {

      init = {
        defaultBranch = "main";
      };

      core = {
        excludesFile = "${config.home.homeDirectory}/.config/git/ignore";
      };

    };
  };

  home.file.".config/git/ignore".text = ''
    .venv/
    .vscode/
  ''
}