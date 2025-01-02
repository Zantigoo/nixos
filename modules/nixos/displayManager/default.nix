{pkgs, ...}: {
  # sddm
  services.displayManager.sddm = {
    # enable sddm
    enable = true;
    
    package = pkgs.kdePackages.sddm;

    # enable experimental wayland support
    wayland.enable = true;

  };
}