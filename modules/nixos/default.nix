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
      options = "--delete-older-than 10d";
    };
  };

  boot = {
    loader.grub.configurationLimit = 5;
    supportedFilesystems = {
      ntfs = true;
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


  programs.adb.enable = true;
  users.users.zantigo.extraGroups = ["adbusers"];

  programs.appimage = {
    enable = true;
    binfmt = true;
  };
  
  hardware.ckb-next.enable = false;
  virtualisation.waydroid.enable = true;

  environment.variables.WLR_NO_HARDWARE_CURSORS = "1";
  environment.sessionVariables = {
    HYPRSHOT_DIR = "/home/zantigo/Pictures/Clips/Screenshots";
  };

}
