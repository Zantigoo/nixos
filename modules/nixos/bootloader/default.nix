{ ... }:

{
  # Bootloader.

  boot = {
    loader = {
      timeout = 10;
      grub = {
        device = "nodev";
        enable = true;
        configurationLimit = 10;
        useOSProber = true;
        efiSupport = true;
      };
      systemd-boot.enable = false;
      efi.canTouchEfiVariables = true;
      efi.efiSysMountPoint = "/boot";
    };
    supportedFilesystems = {
      ntfs = true;
    };
  };


}

