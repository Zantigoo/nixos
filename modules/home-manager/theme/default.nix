{
  pkgs,
  inputs,
  config,
  ...
}: {
  imports = [
    inputs.nix-colors.homeManagerModules.default
  ];

  # set global colorscheme
  colorScheme = inputs.nix-colors.colorSchemes.catppuccin-mocha;

  # generate colorScheme.scss
  home.file."${config.home.homeDirectory}/.config/colorScheme/style.scss".text = with config.colorScheme.palette; ''
    @define-color base00 #${base00};
    @define-color base01 #${base01};
    @define-color base02 #${base02};
    @define-color base03 #${base03};
    @define-color base04 #${base04};
    @define-color base05 #${base05};
    @define-color base06 #${base06};
    @define-color base07 #${base07};
    @define-color base08 #${base08};
    @define-color base09 #${base09};
    @define-color base0A #${base0A};
    @define-color base0B #${base0B};
    @define-color base0C #${base0C};
    @define-color base0D #${base0D};
    @define-color base0E #${base0E};
    @define-color base0F #${base0F};
  '';

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

  # cursor
  home.pointerCursor = {
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 24;

    # enable gtk
    gtk.enable = true;
  };

  # enable qt
  qt = {
    enable = true;

    # qt platform theme
    platformTheme.name = "gtk";

    # qt style
    style = {
      name = "adwaita-dark";
      package = pkgs.adwaita-qt;
    };
  };

  # enable gtk
  gtk = {
    enable = true;

    # gtk theme
      theme = {
        name = "Catppuccin-Mocha-Standard-Mauve-Dark";
        package = pkgs.catppuccin-gtk.override {
          accents = ["mauve"];
          size = "standard";
          tweaks = ["normal"];
          variant = "mocha";
        };
      };

    # gtk icon theme
    iconTheme = {
      package = pkgs.papirus-icon-theme;
      name = "Papirus-Dark";
    };
  };
}
