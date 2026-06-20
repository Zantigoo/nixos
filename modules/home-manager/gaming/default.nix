{ pkgs, ... }: {
  imports = [
    ./mangohud.nix
  ];

  home.packages = with pkgs; [

    # utilities
    wineWow64Packages.waylandFull
    wine-wayland
    winetricks
    protontricks
    deadlock-mod-manager

    # launchers
    cockatrice
    lutris
    vintagestory
    prismlauncher

  ];
}
