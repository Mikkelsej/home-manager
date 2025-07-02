{ config, pkgs, ... }:

{
    shellAliases = {
      c = "clear";
      nf = "fastfetch";
      pf = "fastfetch";
      ff = "fastfetch";
      ls = "eza -a --icons=always";
      ll = "eza -al --icons=always";
      lt = "eza -a --tree --level=1 --icons=always";

      gs = "git status";
      ga = "git add";
      gc = "git commit -m";
      gp = "git push";
      gpl = "git pull";
      gst = "git stash";
      gsp = "git stash; git pull";
      gfo = "git fetch origin";
      gcheck = "git checkout";
      gcredential = "git config credential.helper store";

      home-switch = "home-manager switch --flake ~/home-manager#mikke";

      cd = "z";
    };
}
