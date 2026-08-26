{ ... }:

{
  # enable usb modeswitch (for android usb tethering)
  hardware.usb-modeswitch.enable = true;
  # for Flipper over USB
  hardware.flipperzero.enable = true;

  # enable networking
  networking.networkmanager = {
    enable = true;
  };
  networking.networkmanager.wifi.macAddress = "stable-ssid";

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
  nix.settings.trusted-users = [
    "root"
    "zantigo"
  ];

  networking.hosts = {
    "192.168.1.99" = [ "3DPrinter.local" ];
    "192.168.1.70" = [ "relic.local" ];
    "192.168.1.100" = [ "Library.local" ];
    "192.169.1.99" = [ "3DPrinter.local" ];
  };

  networking.firewall = rec {
    enable = true;
    allowedTCPPorts = [
      53317 # LocalSend
      8000 # Gen Purpose
      25565 # Minecraft Server
      42420 # VintageStory
    ];
    allowedTCPPortRanges = [
      {
        from = 1714;
        to = 1764;
      }
    ];
    allowedUDPPortRanges = allowedTCPPortRanges;
    allowedUDPPorts = [
      52102
      5520
    ];
  };
}
