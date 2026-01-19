{inputs, system, pkgs, ...}: {
  imports = [
    ../default.nix
    ./sound
    ./locale
    ./displayManager
    ./windowManager
    ./bootloader
    ./packages
    ./networking
    ./plymouth
    ./ssh
    ./theme
    ./virtualization
    ./printing
  ];

#  xdg.mime.defaultApplications = {
#      "inode/directory" = [ "org.gnome.Nautilus.desktop" ];
#  };

#system = {
#     autoUpgrade.enable = true;
#     autoUpgrade.dates = "weekly";
#};

nix = {
    settings = {
      experimental-features = ["nix-command" "flakes"];
      auto-optimise-store = true;
    };

    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 10d";
    };
  };

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


  users.users.zantigo.extraGroups = ["adbusers" "dialout"];

  programs.appimage = {
    enable = true;
    binfmt = true;
  };

  environment.variables.WLR_NO_HARDWARE_CURSORS = "1";
  environment.sessionVariables = {
    HYPRSHOT_DIR = "/home/zantigo/Pictures/Clips/Screenshots";
  };

}
