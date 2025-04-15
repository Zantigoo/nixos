{...}: {

  imports = [
    ./zsh.nix
    ./tmux.nix
    ./starship.nix
  ];

  # shell aliases
  home.shellAliases = {
    nixos-rebuild-flake = "sudo nixos-rebuild switch --flake";
    nixos-update-flake = "nix flake update && sudo nixos-rebuild switch --flake";
    discord = "vesktop";
  };
}
