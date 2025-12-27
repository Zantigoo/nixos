{
  pkgs,
  inputs,
  ...
}: {
  imports = [inputs.niri.homeModules.stylix];
  stylix = {
    enable = true;
    autoEnable = false;
    image = ./wall2.png;
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";

    #override = {
    #  base00 = "1e1e2e"; # base
    #  base01 = "181825"; # mantle
    #  base02 = "313244"; # surface0
    #  base03 = "45475a"; # surface1
    #  base04 = "585b70"; # surface2
    #  base05 = "cdd6f4"; # text
    #  base06 = "f9e2af"; # rosewater
    #  base07 = "fab387"; # lavender
    #  base08 = "f9e2af"; # red
    #  base09 = "fab387"; # peach
    #  base0A = "f9e2af"; # yellow
    #  base0B = "fab387"; # green
    #  base0C = "f9e2af"; # teal
    #  base0D = "fab387"; # blue
    #  base0E = "f9e2af"; # mauve
    #  base0F = "fab387"; # flamingo
    #};

    fonts = {
      monospace = {
        name = "Fira Code";
        package = pkgs.fira-code;

      };
      
    };   
    
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 24;
    };

    targets = {
      gtk.enable = true;
      gnome.enable = true;
      hyprland.enable = false;
      kitty.enable = true;
      btop.enable = true;
      yazi.enable = true;
      nixvim.enable = true;
      micro.enable = true;
      ghostty.enable = true;
      vesktop.enable = true;
      zellij.enable = true;
      wezterm.enable = true;
      rofi.enable = true;
      mpv.enable = true;
      helix.enable = true;
    };

    iconTheme = {
      enable = true;
      package = pkgs.papirus-icon-theme;
      dark = "Papirus-Dark";
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

  # cursor
  home.pointerCursor = {
    # enable gtk
    gtk.enable = true;
  };

  # enable qt
  qt = {
    enable = true;
    platformTheme.name = "kvantum";
    style = {
      name = "kvantum";
     /* catppuccin = {
        enable = true;
        accent = "mauve";
        flavor = "mocha";
      };*/
    };
  };
  # set pref dark theme
  /*dconf.settings = {
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
      };
  };*/
  # enable gtk
  gtk = {
    enable = true;

    # gtk theme
    /*catppuccin = {
      enable = true;
      accent = "mauve";
      flavor = "mocha";
      size = "compact";
    };*/

    /*catppuccin.icon = {
      enable = true;
      accent = "mauve";
      flavor = "mocha";
    };*/

  };


}
