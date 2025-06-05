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
    recgpu = "bash ~/bin/start-stop-recording.sh";
    clipgpu = "bash ~/bin/save-replay.sh";
  };
}
