{pkgs, ...}: {
  home.packages = with pkgs; [
    # desktop utilities
    xarchiver
    gparted
    pavucontrol
    easyeffects
    hyprlock
  

    # desktop apps
    bitwarden
    firefox
    vesktop
    obs-studio
    krita
    obsidian
    prismlauncher
    blockbench

    # development tools
    vscode
    putty


    # compilers and runtimes
    nodejs
    node2nix
    nodePackages.pnpm
    nodePackages.yarn
    nodePackages.wrangler
    nodePackages.eslint
    nodePackages.prettier
    bun
    go
    
    
  ];

}
