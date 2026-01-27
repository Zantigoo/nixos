{ ... }:

{
  # enable usb modeswitch (for android usb tethering)
  hardware.usb-modeswitch.enable = true;
  # for Flipper over USB
  hardware.flipperzero.enable = true;
  
  # enable networking
  networking.networkmanager.enable = true; 
  networking.networkmanager.wifi.macAddress = "random";
  # enable bluetooth
  hardware.bluetooth = {
    enable = true;
    settings = {
      General = {
        Experimental = true;
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
      1714
    ];
    allowedUDPPorts = [
      52102
      5520
    ];
  };
}
