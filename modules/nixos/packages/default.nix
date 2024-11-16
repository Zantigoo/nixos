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
        
  ];

  programs.gnome-disks.enable = true;
  programs.nautilus-open-any-terminal = {
    enable = true;
    terminal = "kitty"; 
  };
  programs.nm-applet.enable = true;


  services.ollama = {
    enable = true;
    acceleration = "rocm";
    environmentVariables = {
      # Needed to work with 6650XT
      HSA_OVERRIDE_GFX_VERSION = "10.3.0";
    };
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
