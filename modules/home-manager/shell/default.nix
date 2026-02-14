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
    nrf = "cd ~/nixos && sudo nixos-rebuild switch --flake";
    nrf-library = "cd ~/nixos && sudo nixos-rebuild switch --flake ./#library";
    nuf = "cd ~/nixos && nix flake update";
    ny = "cd ~/nixos && yazi";
    discord = "vesktop";
    recgpu = "bash ~/bin/start-stop-recording.sh";
    clipgpu = "bash ~/bin/save-replay.sh";
  };

  home.sessionVariables = {
    EDITOR = "nvim";
    TERMINAL = "wezterm";
  };
}
