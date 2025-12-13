{ pkgs, ... }:

{
	services.ollama = {
    enable = true;
    package = pkgs.ollama-rocm;
    rocmOverrideGfx = "10.3.0";
  };
  services.sillytavern = {
    enable = true;
    listen = true;
    listenAddressIPv4 = "127.0.0.1";
    port = 3456;
  };

}
