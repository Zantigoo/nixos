{pkgs, ...}: {

  imports = [
    ./btop.nix
    ./micro.nix
    ./fzf.nix
    ./helix.nix
    ./yazi.nix
    ./neovim.nix
    ./ghostty.nix
    ./kitty.nix
  ];

  home.packages = with pkgs; [
    # desktop utilities
    xarchiver
    pavucontrol
    handlr
    p7zip

    # desktop apps
    bitwarden
    floorp
    vesktop
    obs-studio
    obsidian
    blockbench
    chromium
    localsend
    eog
    gnome-text-editor
    krita
    slack
    deluge
    gnome-boxes    
    pinta
    limo
    # terminal time
    mpv

    # screen capturing
    grim
    slurp
    imagemagick
    swappy
    gpu-screen-recorder


    #hypr utils

    hyprshot
    
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
