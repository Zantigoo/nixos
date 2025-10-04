{ 
  pkgs,
  ...
}:{
  hardware.ckb-next = {
    enable = true;
  };
  services.ratbagd.enable = false;
  environment.systemPackages = with pkgs; [
  ]; 
}
