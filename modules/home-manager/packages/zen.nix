{ inputs, ... }:
{
  # home.nix
  imports = [
    inputs.zen-browser.homeModules.beta
  ];

  programs.zen-browser = {
    enable = true;
    # profiles.default.presets = {
    #   catppuccin = {
    #     enable = true;
    #     flavor = "Mocha";
    #     accent = "Mauve";
    #   };
    #   betterfox.enable = true;
    # };
  };
}
