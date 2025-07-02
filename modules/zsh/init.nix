{ config, pkgs, ... }:

{
initContent = ''
      source $HOME/.nix-profile/etc/profile.d/hm-session-vars.sh
      # Check if terminal is a pseudo-terminal (pts)
      if [[ $(tty) == *"pts"* ]]; then
        # Run fastfetch with the specified config
        fastfetch --config examples/13
      fi
      export ZSH="${pkgs.zsh}/bin/zsh"
      export ZSH_HIGHLIGHT_STYLES='bg=blue'
      export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=cyan'
      eval "$(zoxide init zsh)"
    '';
}
