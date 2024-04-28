{
  config,
  lib,
  pkgs,
  ...
}: 

{
  services.mako = {
    enable = true;
    background-color = "#1e1e2e";
    text-color = "#cdd6f4";
    progress-color = "over ";
    border-color = "#cba6f7";
    borderRadius = 15;
    borderSize = 3;
  }
}