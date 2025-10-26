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
    nexusmods-app-unfree

    # launchers
    cockatrice
    lutris
    vintagestory
    prismlauncher

  ];
}
