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
    ./theme
  ];

#  xdg.mime.defaultApplications = {
#      "inode/directory" = [ "org.gnome.Nautilus.desktop" ];
#  };

system = {
     autoUpgrade.enable = true;
     autoUpgrade.dates = "weekly";
};

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

  fileSystems."/run/media/zantigo/Deep_Storage" = { 
    device = "/dev/disk/by-uuid/A09E66D19E669F90";
    fsType = "ntfs-3g"; 
    options = [ "rw" "uid=1000"];
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
  users.users.zantigo.extraGroups = ["adbusers" "dialout"];

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
