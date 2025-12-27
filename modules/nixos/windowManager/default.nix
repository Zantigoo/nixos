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
  
  security.polkit.enable = true;
  services.gnome.gnome-keyring.enable = true;

  environment.systemPackages = with pkgs; [
    xdg-desktop-portal-gtk
    xwayland-satellite
  ];

}

