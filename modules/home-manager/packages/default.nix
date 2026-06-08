{ pkgs, ... }:
{

  imports = [
    ./btop.nix
    ./micro.nix
    ./fzf.nix
    ./helix.nix
    ./yazi.nix
    ./wezterm.nix
    ./zen.nix
    ./kde-connect.nix
    ./wlr-which-key.nix
    ./easyeffects.nix
    ./firefox.nix
  ];

  home.packages = with pkgs; [
    # desktop utilities
    pavucontrol


    # desktop apps
    vesktop
    obsidian
    blockbench
    localsend
    eog
    onlyoffice-desktopeditors
    qbittorrent
    warehouse
    obs-studio
    nicotine-plus
    zoom-us
    vscodium
    krita
    gnome-text-editor
    chromium


    # terminal time
    mpv
    p7zip
    serpl
    jpegoptim

    # screen capturing
    gpu-screen-recorder

    #clipboard
    clipse
    wl-clipboard

    # compilers and runtimes
    bun
    go
    python3
    python313Packages.pip
  ];
}
