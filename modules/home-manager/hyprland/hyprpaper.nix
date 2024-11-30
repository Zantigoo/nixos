{
  inputs,
  pkgs,
  config,
  ...
}: {
  services.hyprpaper = {
    enable = false;
    settings = {
      splash = false;
      preload = [
        "/home/zantigo/nixos/modules/home-manager/hyprland/wall2.png"
      ];
      wallpaper = [
        ", /home/zantigo/nixos/modules/home-manager/hyprland/wall2.png"
      ];
    };
  };
} 

