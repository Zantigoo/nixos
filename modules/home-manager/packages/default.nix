{pkgs, ...}: {

  imports = [
    ./btop.nix
    ./micro.nix
    ./fzf.nix
    ./helix.nix
    ./yazi.nix
  ];

  home.packages = with pkgs; [
    # desktop utilities
    xarchiver
    pavucontrol
    handlr
    p7zip

    # desktop apps
    bitwarden
    firefox
    vesktop
    obs-studio
    obsidian
    blockbench
    chromium
    localsend
    eog
    gnome-text-editor
    krita
    aseprite
    slack
    lutris

    # terminal time


    # screen capturing
    grim
    slurp
    imagemagick
    swappy
    gpu-screen-recorder

    #hypr utils

    hyprshot
    hyprlock
    
    #clipboard

    clipse
    wl-clipboard
    
    # development tools
    vscode


    # compilers and runtimes
    nodejs
    bun
    go

  ];

}
