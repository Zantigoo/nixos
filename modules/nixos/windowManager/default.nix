{ pkgs, ... }:

{
  # Enable the Hyprland Window Manager
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  programs.niri = {
    enable = true;
  };
  
  security.polkit.enable = true;
  services.gnome.gnome-keyring.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [ xdg-desktop-portal-gtk ];
    config.hyprland.default = [
      "hyprland"
      "gtk"
    ];
  };


  environment.systemPackages = with pkgs; [
    xdg-desktop-portal-gtk
    xwayland-satellite
  ];

}

