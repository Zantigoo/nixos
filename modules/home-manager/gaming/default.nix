{pkgs, ...}: {
  imports = [
    ./mangohud.nix
  ];

  home.packages = with pkgs; [
    # gaming
    lutris
    wineWowPackages.waylandFull
    wine-wayland
    winetricks
    cockatrice
    protontricks
    prismlauncher
    bottles
    r2modman
    itch
  ];
}
