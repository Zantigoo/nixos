{pkgs, ...}: {
  home.packages = with pkgs; [
    # desktop utilities
    xarchiver
    pavucontrol
    easyeffects
    hyprlock
    handlr
    p7zip
    evince
    gnome.zenity

    # desktop apps
    bitwarden
    firefox
    vesktop
    obs-studio
    krita
    obsidian
    blockbench
    chromium
    localsend
    gnome.eog
    

    # work shit
    slack
    zoom-us
    
    # development tools
    vscode


    # compilers and runtimes
    nodejs
    bun
    go

  ];

}
