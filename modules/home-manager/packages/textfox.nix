{
  config,
  lib,
  pkgs,
  ...
}: 

{

imports = [ inputs.textfox.homeManagerModules.default ];

textfox = {
    enable = true;
    profile = "default";
    config = {
        # Optional config
    };
};

}