{ pkgs, inputs, ... }:

{
  # Enable the Hyprland Window Manager
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;

  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [ xdg-desktop-portal-gtk ];
  };

  environment.systemPackages = with pkgs; [
    xdg-desktop-portal-gtk
  ];

}

