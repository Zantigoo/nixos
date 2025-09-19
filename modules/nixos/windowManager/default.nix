{ pkgs, ... }:

{
  # Enable the Hyprland Window Manager
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

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
  ];

}

