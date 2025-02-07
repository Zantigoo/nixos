{pkgs, ...}: {
  imports = [
    ./mangohud.nix
  ];

  home.packages = with pkgs; [
    # gaming
    wineWowPackages.waylandFull
    wine-wayland
    winetricks
    cockatrice
    protontricks
    prismlauncher
    r2modman
    itch
    heroic
    lutris
  ];
}
