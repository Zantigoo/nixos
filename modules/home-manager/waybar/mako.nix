{
  config,
  lib,
  pkgs,
  ...
}: 

{
  services.mako = {
    enable = true;
    backgroundColor = "#1e1e2e";
    textColor = "#cdd6f4";
    progressColor = "over #313244";
    borderColor = "#cba6f7";
    borderRadius = 10;
    borderSize = 3;
    defaultTimeout = 15000;
  };
}
