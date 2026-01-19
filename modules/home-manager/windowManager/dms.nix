{
  inputs,
  ...
}: {
  imports = [
    inputs.dankMaterialShell.homeModules.default
    inputs.dankMaterialShell.homeModules.niri
    inputs.niri.homeModules.niri
  ];

  programs.dankMaterialShell = {
    enable = true;
    systemd = {
      enable = true;
    };
    enableVPN = true;
    enableAudioWavelength = true;

  };
}
