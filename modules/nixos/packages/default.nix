{pkgs, ...}: {
  imports = [
    ./fonts.nix
    ./syncthing.nix
    ./ollama.nix
    ./firefox.nix
  ];

  # system packages
  environment.systemPackages = with pkgs; [

    # cli tools
    curl
    wget
    killall
    tree
    fastfetch
    jq
    inotify-tools
    libnotify
    openssl
    pandoc
    unrar
    brightnessctl
    pulseaudio
    ffmpeg
    ripgrep
    zoxide    
    bluetui
    powershell
    rclone

    #dependants

    pango
    nautilus
    nautilus-python
    papirus-icon-theme
    firefoxpwa
    tuigreet
    
  ];

  programs.gnome-disks.enable = true;
  programs.nautilus-open-any-terminal = {
    enable = true;
  };

  services.udev.packages = with pkgs; [
    via
  ];


  #programs.thunar = {
  #      enable = true;
  #      plugins = with pkgs.xfce; [
  #          thunar-archive-plugin
  #          thunar-volman
  #      ];
  #  };

  #  programs.xfconf.enable = true;
}
