{...}: {

  imports = [
    ./zsh.nix
    ./starship.nix
    ./zellij.nix
  ];

  # shell aliases
  home.shellAliases = {
    nixos-rebuild-flake = "sudo nixos-rebuild switch --flake";
    nixos-update-flake = "nix flake update";
    discord = "vesktop";
    recscrn = "bash ~/bin/start-recording.sh";
  };
}
