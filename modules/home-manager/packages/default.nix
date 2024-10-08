{pkgs, ...}: {

  imports = [
    ./btop.nix
    ./micro.nix
    ./fzf.nix
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
    r2modman
    itch



    # screen capturing
    grim
    slurp
    imagemagick
    swappy
    gpu-screen-recorder

    #hypr utils

    hyprshot
    hyprnome
    hyprlock
    
    #clipboard

    clipse
    wl-clipboard

    # work shit
    slack
    
    # development tools
    vscode


    # compilers and runtimes
    nodejs
    bun
    go

  ];



}
