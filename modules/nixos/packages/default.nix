{pkgs, ...}: {
  imports = [
    ./fonts.nix
    ./syncthing.nix
    ./ollama.nix
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
    papirus-icon-theme
    where-is-my-sddm-theme
    rocmPackages.rocm-smi
    rocmPackages.rocminfo
        
  ];

  programs.gnome-disks.enable = true;
  programs.nautilus-open-any-terminal = {
    enable = true;
    terminal = "kitty"; 
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
