{ 
  pkgs,
  ...
}:{
  hardware.ckb-next = {
    enable = false;
  };
  services.ratbagd.enable = false;
  environment.systemPackages = with pkgs; [
  ]; 
}
