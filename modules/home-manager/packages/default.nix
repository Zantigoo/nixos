{pkgs, ...}: {
  home.packages = with pkgs; [
    # desktop utilities
    xarchiver
    pavucontrol
    easyeffects
    hyprlock
    handlr

    # desktop apps
    bitwarden
    firefox
    vesktop
    obs-studio
    krita
    obsidian
    prismlauncher
    blockbench
    ungoogled-chromium
    localsend

    # development tools
    vscode


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
