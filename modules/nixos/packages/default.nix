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
    hyprpanel
    pulseaudio
    blueman
    ffmpeg
    ripgrep
    
    #dependants
    zenity
    evince
    glib
    gobject-introspection
    gtk3
    gtk4
    pkg-config
    wrapGAppsHook4
    gdk-pixbuf
    gsettings-desktop-schemas
    librsvg
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
  programs.nm-applet.enable = true;

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
