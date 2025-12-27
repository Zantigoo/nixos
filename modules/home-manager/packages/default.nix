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
    ./zen.nix
  ];

  home.packages = with pkgs; [
    # desktop utilities
    xarchiver
    pavucontrol
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
    warehouse

    # terminal time
    mpv

    # screen capturing
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
