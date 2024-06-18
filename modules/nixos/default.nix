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

#  xdg.mime.defaultApplications = {
#      "inode/directory" = [ "org.gnome.Nautilus.desktop" ];
#  };

  nix = {
    settings = {
      experimental-features = ["nix-command" "flakes"];
      auto-optimise-store = true;
    };

    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 5d";
    };
  };

  # allow unfree packages
  nixpkgs.config = {
    allowUnfree = true;
    rocmSupport = true;
  };

  # enable additional services

  services = {
    upower.enable = true;
    gvfs.enable = true;
    flatpak.enable = true;
    uptimed.enable = true;
    tumbler.enable = true;
  };

  time = {
    hardwareClockInLocalTime = true;
  };

  security = {
    sudo.extraConfig = "
      Defaults timestamp_timeout=20
    ";
  };

  hardware.ckb-next.enable = true;
  virtualisation.waydroid.enable = true;
}
