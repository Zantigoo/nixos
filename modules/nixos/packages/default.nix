{pkgs, ...}: {
  imports = [
    ./fonts.nix
  ];

  # system packages
  environment.systemPackages = with pkgs; [

    # cli tools
    curl
    wget
    killall
    tree
    fastfetch
    btop
    jq
    inotify-tools
    libnotify
    openssl
    pandoc
    unrar

    # gtk
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
    gnome.nautilus
  ];
  
  programs.nautilus-open-any-terminal.enable = true;
  programs.nm-applet.enable = true;


  services.ollama = {
    enable = true;
  };

  #programs.thunar = {
  #      enable = true;
  #      plugins = with pkgs.xfce; [
  #          thunar-archive-plugin
  #          thunar-volman
  #      ];
  #  };

  #  programs.xfconf.enable = true;
}
