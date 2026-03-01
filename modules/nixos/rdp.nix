{...} : {
  services.gnome.gnome-remote-desktop.enable = true;
  systemd.services.gnome-remote-desktop = { 
    wantedBy = [ "graphical.target" ]; # for starting the unit automatically at boot
  };
  services.displayManager.autoLogin.enable = false;
  networking.firewall.allowedTCPPorts = [ 3389 ];
  
  }
