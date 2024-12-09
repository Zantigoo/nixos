{
  config,
  lib,
  pkgs,
  ...
}: 

{
    programs.helix = {
        enable = true;
        defaultEditor = false;
        
        catppuccin = {
            enable = true;
            flavor = "mocha";
        };
    };
}