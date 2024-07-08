{ pkgs, ... }:

{
  boot.plymouth = {
    enable = true;
    catppuccin = {
      enable = true;
      flavor = "mocha";
    };
  
  };
  
}

