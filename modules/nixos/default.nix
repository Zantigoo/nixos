{...}: {
  imports = [
    ../default.nix
    ./sound
    ./locale
    ./displayManager
    ./hyprland
    ./bootloader
    ./packages
    ./polkit
    ./networking
    ./pam
    ./plymouth
    ./ssh
    ./gaming
  ];

  xdg.mime.defaultApplications = {
      "inode/directory" = [ "org.gnome.Nautilus.desktop" ];
  };

  nix = {
    settings = {
      experimental-features = ["nix-command" "flakes"];
      auto-optimise-store = true;
    };

    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 3d";
    };
  };

  # allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # enable additional services
  services.upower.enable = true;
  services.gvfs.enable = true;
  services.flatpak.enable = true;
  services.uptimed.enable = true;
  services.tumbler.enable = true;
  hardware.ckb-next.enable = true;
}
