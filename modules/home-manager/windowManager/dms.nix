{
  inputs,
  ...
}: {
  imports = [
    inputs.dankMaterialShell.homeModules.dankMaterialShell.default
    inputs.dankMaterialShell.homeModules.dankMaterialShell.niri
    inputs.niri.homeModules.niri
  ];

  programs.dankMaterialShell = {
    enable = true;
    systemd = {
      enable = true;
    };
  };
}
