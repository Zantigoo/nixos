{
  config,
  lib,
  pkgs,
  ...
}: 

{
    programs.helix = {
        enable = false;
        defaultEditor = false;
        
    };
}
