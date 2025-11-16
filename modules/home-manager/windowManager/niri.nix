{
  config,
  pkgs,
  inputs,
  ...
}: {
  nixpkgs.overlays = [ inputs.niri.overlays.niri ];
  programs.niri = {
    settings = {
      binds = with config.lib.niri.actions; {
        
        "Mod+Return".action = spawn "wezterm";
      
        "Mod+Space".action = spawn "dms" "ipc" "call" "spotlight" "toggle";
        "Mod+Ctrl+V".action = spawn "dms" "ipc" "call" "clipboard" "toggle";
        "Mod+Escape".action = spawn "dms" "ipc" "call" "powermenu" "toggle";
        "Mod+L".action = spawn "dms" "ipc" "call" "lock" "lock";

        "Mod+Shift+Left".action = focus-monitor-left;
        "Mod+Shift+Right".action = focus-monitor-right;
        

        "XF86AudioRaiseVolume".action = spawn "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1+";
        "XF86AudioLowerVolume".action = spawn "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1-";
          
        "Mod+Tab".action = toggle-overview;
        "Mod+Tab".repeat = false;
        "Mod+Shift+E".action = quit;
        

        "Mod+Q".action = close-window;

        "Mod+V".action = toggle-window-floating;

        "Mod+Equal".action = set-column-width "+10%";
        "Mod+Minus".action = set-column-width "-10%";

        "Mod+Left".action = focus-column-left;
        "Mod+Down".action = focus-window-down;
        "Mod+Up".action = focus-window-up;
        "Mod+Right".action = focus-column-right;
        "Mod+Ctrl+Left".action = move-column-left;
        "Mod+Ctrl+Down".action = move-window-down;
        "Mod+Ctrl+Up".action = move-window-up;
        "Mod+Ctrl+Right".action = move-column-right;

        "Mod+Period".action = expel-window-from-column;

        "Mod+R".action = switch-preset-column-width;
        "Mod+Shift+R".action = switch-preset-window-height;
        "Mod+Shift+F".action = fullscreen-window;
        "Mod+F".action = maximize-column;
        "Mod+Ctrl+F".action = expand-column-to-available-width;
        "Mod+C".action = center-column;
      };

      gestures = {
        hot-corners.enable = false;
      };
      
      outputs = {
        "DP-1" = {
          focus-at-startup = true;

        };
        "DP-2" = {
          position.x = -1920;
          position.y = 0;

        };
      };
      input = {
        focus-follows-mouse.enable = true;
        mouse = {
          accel-profile = "flat";
          accel-speed = 0.2;
        };
      };
      prefer-no-csd = true;
    };
  };
} 
