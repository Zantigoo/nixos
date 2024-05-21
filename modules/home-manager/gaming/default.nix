{pkgs, ...}: {
  imports = [
    ./mangohud.nix
  ];

  home.packages = with pkgs; [
    # gaming
    lutris
    wineWowPackages.waylandFull
    winetricks
    cockatrice
    protontricks
    prismlauncher
  ];
}
