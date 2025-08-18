{
  pkgs,
  ...
}: {
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    modes = [
      "drun"
    ];
    plugins = [
      pkgs.rofi-calc
    ];
    cycle = true;
    location = "center";

  };
}
