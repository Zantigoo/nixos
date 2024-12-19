{pkgs, ...}: {
  # enable fonts
  fonts.fontconfig.enable = true;

  # packages
  fonts.packages = with pkgs; [
    fira-code
    nerd-fonts.jetbrains-mono
    nerd-fonts.caskaydia-cove
    nerd-fonts.caskaydia-mono
    nerd-fonts.fira-code
  ];
}
