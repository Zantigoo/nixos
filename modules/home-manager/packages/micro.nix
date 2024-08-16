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
            enable = false; #Fucking Opposite day I guess
            flavor = "mocha";
        };

        settings = {
            colorscheme = "";
        };
    };
}