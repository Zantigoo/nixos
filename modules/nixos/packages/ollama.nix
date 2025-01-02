{ ... }:

{
	services.ollama = {
    enable = false;
    acceleration = "rocm";
    rocmOverrideGfx = "10.3.0";
  };

}