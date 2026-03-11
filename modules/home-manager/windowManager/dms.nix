{
  inputs,
  ...
}: {
  imports = [
    inputs.dankMaterialShell.homeModules.default
    inputs.dankMaterialShell.homeModules.niri
    inputs.niri.homeModules.niri
  ];

  programs.dank-material-shell = {
    enable = true;
    systemd = {
      enable = true;
    };
    enableVPN = true;
    enableAudioWavelength = true;
    enableCalendarEvents = true;
  };
}
