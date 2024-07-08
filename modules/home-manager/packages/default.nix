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
    easyeffects
    hyprlock
    handlr
    p7zip
    evince
    zenity

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
