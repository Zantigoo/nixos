{ pkgs, ... }:
{
environment.systemPackages = [(
  pkgs.catppuccin-sddm.override {
    flavor = "mocha";
    font  = "Noto Sans";
    fontSize = "10";
    background = "${/home/zantigo/nixos/modules/home-manager/hyprland/wall2.png}";
    loginBackground = true;
  };
)];
}

