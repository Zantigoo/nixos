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
    ./thunderbird.nix
  ];

  home.packages = with pkgs; [
    # desktop utilities
    pavucontrol

    # desktop apps
    vesktop
    obsidian
    blockbench
    localsend
    onlyoffice-desktopeditors
    warehouse
    obs-studio
    nicotine-plus
    zoom-us
    vscodium
    krita
    gnome-text-editor
    chromium
    opencode
    tabiew
    orca-slicer
    qimgv
    proton-vpn
    transmission_4-gtk

    # terminal time
    mpv
    p7zip
    serpl
    jpegoptim
    proton-cli

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
