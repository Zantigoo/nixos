{lib, ...}: {
  # zsh 
  programs.zsh = { 
    # enable zsh
    enable = true;

    # enable oh-my-zsh
    oh-my-zsh.enable = true;

    # enable plugins
    enableCompletion = true;
    autosuggestion.enable = true;
  };

  # starship
  programs.starship = {
    # enable starship
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = true;
      format = lib.concatStrings [
        ""
        "$line_break"
        "$character"
      ];
      scan_timeout = 10;
      character = {
        success_symbol = "⮕";
        error_symbol = "⮕";
      };
    };
  };

  # shell aliases
  home.shellAliases = {
    nixos-rebuild-flake = "sudo nixos-rebuild switch --flake";
    nixos-update-flake = "nix flake update && sudo nixos-rebuild switch --flake";
    discord = "vesktop";
    
    
  };
}
