{ pkgs, ... }:

{
  services.ollama = {
    enable = true;
    package = pkgs.ollama-rocm;
    rocmOverrideGfx = "10.3.0";
  };

  services.open-webui = {
    enable = true;
    host = "0.0.0.0";
    port = 8100;
  };

}
