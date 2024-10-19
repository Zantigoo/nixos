{ ... }:

{
    imports = [
    ./syncthing.nix
  ];
  # enable usb modeswitch (for android usb tethering)
  hardware.usb-modeswitch.enable = true;

  # enable networking
  networking.networkmanager.enable = true; 
  networking.hostName = "Library"; # Define your hostname.

  # enable bluetooth
  hardware.bluetooth = {
    enable = true;
    settings = {
      General = {
        MultiProfile = "multiple";
      };
      
    };
   };

  networking.firewall = {
    enable = true;
    allowedTCPPorts = [
      53317 #LocalSend
    ];
  };

}