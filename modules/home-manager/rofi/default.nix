{
  pkgs,
  lib,
  config,
  ...
}:{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    modes = [
      "drun"
      "ssh"
      "calc"
      {
        name = "obsidian";
        path = lib.getExe pkgs.rofi-obsidian;
      }
    ];
    plugins = [
      pkgs.rofi-calc
      pkgs.rofi-obsidian
    ];
    cycle = true;
    location = "center";
    terminal = "wezterm";
    extraConfig = {
      modi = "ssh,drun,window";
      show-icons = true;
      drun-display-format = "{icon} {name}";
      location = 0;
      disable-history = false;
      hide-scrollbar = true;
      display-drun = "   Apps ";
      display-run = "   Run ";
      display-ssh ="  SSH";
      display-window = "   Window";
      display-Network = " 󰤨  Network";
      sidebar-mode = true;
    };
    theme = let
      inherit (config.lib.formats.rasi) mkLiteral;
            in {
      element = {
        text-style = mkLiteral "bold";
        padding = mkLiteral "0px 10px";
      };
      element-icon = {
        size = mkLiteral "1.5em";
      };
      element-text = {
        vertical-align = mkLiteral "0.5";
        horizontal-align = mkLiteral "0.5";
      };
      window = {
        height = mkLiteral "300px";
        width = mkLiteral "500px";
        border = mkLiteral "2px";
        border-radius = mkLiteral "12px";
        font-size = mkLiteral "16px";
        font-style = mkLiteral "bold";
      };
    };
  };
}
