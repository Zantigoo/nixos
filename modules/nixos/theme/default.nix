{
  pkgs,
  inputs,
  config,
  ...
}: {

  stylix = {
    enable = true;
    autoEnable = false;
    image = ./wall2.png;
    #base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
    override = {
      base00 = "1e1e2e"; # base
      base01 = "181825"; # mantle
      base02 = "313244"; # surface0
      base03 = "45475a"; # surface1
      base04 = "585b70"; # surface2
      base05 = "cdd6f4"; # text
      base06 = "f9e2af"; # rosewater
      base07 = "fab387"; # lavender
      base08 = "f9e2af"; # red
      base09 = "fab387"; # peach
      base0A = "f9e2af"; # yellow
      base0B = "fab387"; # green
      base0C = "f9e2af"; # teal
      base0D = "fab387"; # blue
      base0E = "f9e2af"; # mauve
      base0F = "fab387"; # flamingo
    };
    targets = {
      console.enable = true;
      gnome.enable = true;
      grub = {
        enable = true;
        useImage = ./wall2.png;
      };
      gtk.enable = true;
      plymouth.enable = true;
      


    };
  };

  # Catpuccin-Mocha Cheat Sheet
  # base00: "1e1e2e" # base
  # base01: "181825" # mantle
  # base02: "313244" # surface0
  # base03: "45475a" # surface1
  # base04: "585b70" # surface2
  # base05: "cdd6f4" # text
  # base06: "f5e0dc" # rosewater
  # base07: "b4befe" # lavender
  # base08: "f38ba8" # red
  # base09: "fab387" # peach
  # base0A: "f9e2af" # yellow
  # base0B: "a6e3a1" # green
  # base0C: "94e2d5" # teal
  # base0D: "89b4fa" # blue
  # base0E: "cba6f7" # mauve
  # base0F: "f2cdcd" # flamingo

}