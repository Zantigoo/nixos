{pkgs, ...}: {
  # enable fonts
  fonts.fontconfig.enable = true;

  # packages
  fonts.packages = with pkgs; [
    # fonts
    jetbrains-mono
    fira-code

    # nerd font
    (nerdfonts.override {
      fonts = [
        "NerdFontsSymbolsOnly"
        "JetBrainsMono"

      ];
    })
  ];
}
