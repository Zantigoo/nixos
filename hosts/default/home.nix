{ config, pkgs, inputs, system, ... }:

{
  imports = [
    ../../modules/home-manager
  ];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "zantigo";
  home.homeDirectory = "/home/zantigo"; 

  # env vars
  home.sessionVariables = {
    EDITOR = "nvim";

    NIXOS_OZONE_WL = "1";
  };

  home.stateVersion = "23.11";
  home.enableNixpkgsReleaseCheck = true;
  
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;


}
