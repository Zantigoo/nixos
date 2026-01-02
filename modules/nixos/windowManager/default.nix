{ pkgs, ... }:

{
  # Enable the Hyprland Window Manager
  programs.hyprland = {
    enable = false;
    xwayland.enable = true;
  };

  programs.niri = {
    enable = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-gnome
    ];
    config = {
      common = {
        default = ["gtk"];
      };
      niri = {
        default = [
        "gnome"
        "gtk"
        ];
        "org.freedesktop.impl.portal.ScreenCast" = [ "gnome" ];
        "org.freedesktop.impl.portal.Screenshot" = [ "gnome" ];
      };
    };
  };
  
  security.polkit.enable = true;
  services.gnome.gnome-keyring.enable = true;

  environment.systemPackages = with pkgs; [
    xwayland-satellite
  ];

}

