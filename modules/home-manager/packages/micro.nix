{
  config,
  lib,
  pkgs,
  ...
}: 

{
    programs.micro = {
        enable = true;
        
        catppuccin = {
            enable = true;
            flavor = "mocha";
        };

    };
}