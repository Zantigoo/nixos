{
  pkgs,
  lib,
  ...
} : {
  
  programs.helix = {
    enable = true;
    languages.language = [
      {
        name = "nix";
        auto-format = true;
        formatter.command = lib.getExe pkgs.nixfmt-rfc-style;
      }
    ];
  };
}
