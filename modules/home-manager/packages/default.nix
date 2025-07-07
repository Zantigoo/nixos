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
  ];

  home.packages = with pkgs; [
    # desktop utilities
    xarchiver
    pavucontrol
    handlr
    p7zip

    # desktop apps
    firefox
    bitwarden
    vesktop
    obs-studio
    obsidian
    blockbench
    chromium
    localsend
    eog
    krita
    slack
    deluge

    # terminal time
    mpv

    # screen capturing
    grim
    slurp
    imagemagick
    swappy
    gpu-screen-recorder

    #hypr utils
    hyprpicker
    hyprshot
    
    #clipboard
    clipse
    wl-clipboard
    
    # compilers and runtimes
    nodejs
    bun
    go

  ];

}
