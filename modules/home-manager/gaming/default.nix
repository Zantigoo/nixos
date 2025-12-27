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
    deadlock-mod-manager
    nexusmods-app
    # launchers
    cockatrice
    lutris
    vintagestory
    prismlauncher

  ];
}
