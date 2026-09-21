{ pkgs, ... }:

{
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
        default = [ "gtk" ];
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
  # services.cage = {
  #   enable = true;
  #   program = "${pkgs.prismlauncher}/bin/prismlauncher";
  #   extraArguments = [
  #     "-l"
  #     "OptiMobile"
  #     "-w"
  #     "New World"
  #   ];
  # };
  security.polkit.enable = true;
  services.gnome.gnome-keyring.enable = true;

  environment.systemPackages = with pkgs; [
    xwayland-satellite
  ];

}
