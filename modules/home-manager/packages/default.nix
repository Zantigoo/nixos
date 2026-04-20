{ pkgs, ... }:
{

  imports = [
    ./btop.nix
    ./micro.nix
    ./fzf.nix
    ./helix.nix
    ./yazi.nix
    ./ghostty.nix
    ./kitty.nix
    ./wezterm.nix
    ./zen.nix
    ./kde-connect.nix
    ./wlr-which-key.nix
    ./easyeffects.nix
  ];

  home.packages = with pkgs; [
    # desktop utilities
    pavucontrol

    # desktop apps
    bitwarden-desktop
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
    rustdesk
    zoom-us

    # terminal time
    mpv
    p7zip
    serpl

    # screen capturing
    gpu-screen-recorder

    #clipboard
    clipse
    wl-clipboard

    # compilers and runtimes
    bun
    go

  ];
}
