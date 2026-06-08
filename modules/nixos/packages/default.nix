{pkgs, ...}: {
  imports = [
    ./fonts.nix
    ./syncthing.nix
    ./zoxide.nix
    ./locate.nix
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
    bluetui
    powershell
    rclone
    nmap
    python3
    fd

    #dependants

    pango
    nautilus
    nautilus-python
    papirus-icon-theme
    tuigreet
    distrobox

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
