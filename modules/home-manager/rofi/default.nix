{
  pkgs,
  config,
  inputs,
  ...
}: {
  programs.rofi = {
    enable = false;
    package = pkgs.rofi-wayland;
    font = "JetBrains Mono 12";
    theme = let
      inherit (config.lib.formats.rasi) mkLiteral;
      inherit (inputs.nix-colors.lib-core.conversions) hexToRGBString;

      palette = config.colorScheme.palette;

      card = {
        background-color = mkLiteral "rgba(${hexToRGBString "," palette.base00}, 1)";
        border = mkLiteral "5px solid";
        border-radius = mkLiteral "10px";
        padding = mkLiteral "10px";
      };
    in {
      "*" = {
        background-color = mkLiteral "transparent";
      # foreground-color = mkLiteral "#${palette.base05}";
        text-color = mkLiteral "#${palette.base05}";
        border-color = mkLiteral ''rgba(${hexToRGBString "," palette.base0E}, 1)'';
      };

      "#window" = {
        background-color = mkLiteral "rgba(${hexToRGBString "," palette.base00}, 0)";
        text-color = mkLiteral "#${palette.base05}";
      };

      "#mainbox" = {
        background-color = mkLiteral "rgba(${hexToRGBString "," palette.base00}, 0)";
        spacing = mkLiteral "10px";
      };

      "#element" = {
        padding = mkLiteral "4px";
        border-radius = mkLiteral "10px";
      };

      "#inputbar" = card // {spacing = mkLiteral "8px";};
      "#listview" = card;
      "#element.selected" = {background-color = mkLiteral "#${palette.base0E}";};
      "#element-text.selected" = {text-color = mkLiteral "#${palette.base00}";};
    };
  };
}
