{pkgs, ...}: {

  imports = [
    ./btop.nix
    ./micro.nix
    ./fzf.nix
    ./helix.nix
    ./yazi.nix
    ./ghostty.nix
    ./kitty.nix
    ./wezterm.nix
    ./fuzzel.nix
  ];

  home.packages = with pkgs; [
    # desktop utilities
    xarchiver
    pavucontrol
    handlr
    p7zip

    # desktop apps
    bitwarden-desktop
    vesktop
    obsidian
    blockbench
    localsend
    eog
    krita
    slack
    onlyoffice-desktopeditors
    protonvpn-gui
    qbittorrent

    # terminal time
    mpv
    
    # wallpaper
    waypaper

    # screen capturing
    grim
    slurp
    imagemagick
    swappy
    gpu-screen-recorder
    
    #clipboard
    clipse
    wl-clipboard
    

    # compilers and runtimes
    nodejs
    bun
    go
    
  ];

}
