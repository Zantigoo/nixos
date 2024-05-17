{pkgs, ...}: {
  # sddm
  services.displayManager.sddm = {
    # enable sddm
    enable = true;

    # enable experimental wayland support
    wayland.enable = true;

    # theme
    theme = "catppuccin-mocha";
  };
}