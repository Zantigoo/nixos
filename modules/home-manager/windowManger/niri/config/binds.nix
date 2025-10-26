{
  pkgs,
  lib,
  config,
  ...
}:
  let
  inherit (lib) getExe mkMerge;
  terminal = getExe pkgs.wezterm;
  web-browser = getExe pkgs.firefox;
  launcher = getExe pkgs.rofi-wayland;
  in
  {
    programs.niri.settings.binds = with config.lib.niri.actions;
    mkMerge [
      {
        "XF86AudioMute".action.spawn = [wpctl "set-mute" "@DEFAULT_AUDIO_SINK@" "toggle"];
        "XF86AudioMicMute".action.spawn = [wpctl "set-mute" "@DEFAULT_AUDIO_SOURCE@" "toggle"];
        "XF86AudioRaiseVolume".action.spawn = [wpctl "set-volume" "@DEFAULT_AUDIO_SINK@" "5%+"];
        "XF86AudioLowerVolume".action.spawn = [wpctl "set-volume" "@DEFAULT_AUDIO_SINK@" "5%-"];
        
        "Mod+Enter".action.spawn = [terminal];
        "Mod+Space".action.spawn = [launcher];
        "Mod+Q".action = close-window;
        "Print".action = screenshot;
      }
    ];

  }
