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
      inputbar = {
        spacing = mkLiteral "8px";
        padding = mkLiteral "8px";
      };
      window = {
        location = mkLiteral "center";
        width = mkLiteral "480";
        border-radius = mkLiteral "5px";
        border = mkLiteral "2px";
      };
      prompt = {
        vertical-align = mkLiteral "0.5";
      };
      textbox = {
        padding = mkLiteral "8px";
      };
      listview = {
        padding =  mkLiteral "4px 0";
        lines = mkLiteral "8";
        columns =   mkLiteral "1";
        fixed-height =  mkLiteral "false";
      };
      element = {
        padding =  mkLiteral "8px";
        spacing =  mkLiteral "8px";
      };
      element-icon = {
        size = mkLiteral "1.8em";
        vertical-align = mkLiteral "0.5";
      };
      element-text = {
        text-color = mkLiteral "inherit";
        vertical-align = mkLiteral "0.5";
      };
    };
  };
}
