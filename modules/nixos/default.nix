{inputs, system, pkgs, ...}: {
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
      dates = "weekly";
    };
  };

  nixpkgs.config = {
    allowUnfree = true;
    rocmSupport = true;
  };

  
  nixpkgs.overlays = [
    inputs.hyprpanel.overlay."x86_64-linux"
  ];

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

  environment.variables.WLR_NO_HARDWARE_CURSORS = "1";


}
