{pkgs, ...}: {
  imports = [
    ./mangohud.nix
  ];

  home.packages = with pkgs; [
    
    # utilities
    wineWowPackages.waylandFull
    wine-wayland
    winetricks
    protontricks

    # launchers
    cockatrice
    lutris
    vintagestory
    prismlauncher

  ];
}
