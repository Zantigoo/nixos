{ pkgs, ... }:

{
	services.ollama = {
    enable = false;
    package = pkgs.ollama-rocm;
    rocmOverrideGfx = "10.3.0";
  };
  services.sillytavern = {
    enable = false;
    listen = true;
    listenAddressIPv4 = "127.0.0.1";
    port = 3456;
  };

}
