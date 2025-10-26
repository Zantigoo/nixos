{
  inputs,
  pkgs,
  lib,
  ...
}:
  let
  inherit (lib) getExe;
  in {
  imports = [
    inputs.niri.homeModules.niri
    ./config/binds.nix
    ./config/env.nix
    ./config/input.nix
    ./config/outputs.nix
    ./config/settings.nix
    ./config/startup.nix
    ./config/windowrules.nix
  ];
  nixpkgs.overlays = [inputs.niri.overlays.niri];

  programs.niri = {
    enable = true;
    package = pkgs.niri;
    settings.xwayland-satellite = {
      enable = true;
      path = getExe pkgs.xwayland-satellite;
    };
  };

  xdg.portal.extraPorts = with pkgs; [
    xdg-desktop-portal-gnome
    xdg-desktop-portal-gtk
  ];

  home.package = with pkgs; [
    gnome-keyring
  ];
}
