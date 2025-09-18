{ ... }:

{
  # enable usb modeswitch (for android usb tethering)
  hardware.usb-modeswitch.enable = true;
  # for Flipper over USB
  hardware.flipperzero.enable = true;
  
  # enable networking
  networking.networkmanager.enable = true; 
  networking.hostName = "Library"; # Define your hostname.
  networking.networkmanager.wifi.macAddress = "random";
  # enable bluetooth
  hardware.bluetooth = {
    enable = true;
    settings = {
      General = {
        MultiProfile = "multiple";
        Disable = "Headset";
      };
      
    };
   };

  networking.firewall = {
    enable = true;
    allowedTCPPorts = [
      53317 #LocalSend
      8000 #Gen Purpose
      25565 #Minecraft Server
    ];
  };

}
