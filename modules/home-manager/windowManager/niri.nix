{
  config,
  pkgs,
  inputs,
  ...
}:
{
  nixpkgs.overlays = [ inputs.niri.overlays.niri ];
  programs.niri = {
    settings = {
      binds = with config.lib.niri.actions; {
        
        "Mod+Return".action.spawn = "wezterm";
        "Mod+Space".action.spawn = ["dms" "ipc" "call" "spotlight" "toggle"];
        "Mod+Ctrl+V".action.spawn = ["dms" "ipc" "call" "clipboard" "toggle"];
        "Mod+Escape".action.spawn = ["dms" "ipc" "call" "powermenu" "toggle"];
        "Mod+L".action.spawn = ["dms" "ipc" "call" "lock" "lock"];

        "Mod+Shift+Left".action.focus-monitor-left = {};
        "Mod+Shift+Right".action.focus-monitor-right = {};

        "XF86AudioRaiseVolume".action.spawn = [ "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1+"];
        "XF86AudioLowerVolume".action.spawn = [ "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1-"];
        "XF86AudioMute".action.spawn = ["wpctl" "set-mute" "@DEFAULT_AUDIO_SINK@" "toggle"];
        "XF86AudioMicMute".action.spawn = ["wpctl" "set-mute" "@DEFAULT_AUDIO_SOURCE@" "toggle"];

        "Mod+Tab".action = toggle-overview;
        "Mod+Tab".repeat = false;
        "Mod+Shift+Alt+Q".action = quit;
        "Mod+Q".action = close-window;
        "Mod+V".action = toggle-window-floating;

        "Mod+Left".action = focus-column-left;
        "Mod+Down".action = focus-window-down;
        "Mod+Up".action = focus-window-up;
        "Mod+Right".action = focus-column-right;
        "Mod+Ctrl+Left".action = move-column-left;
        "Mod+Ctrl+Down".action = move-window-down;
        "Mod+Ctrl+Up".action = move-window-up;
        "Mod+Ctrl+Right".action = move-column-right;

        "Mod+W".action = toggle-column-tabbed-display;
        "Mod+Period".action = expel-window-from-column;

        "Mod+R".action = switch-preset-column-width;
        "Mod+Shift+R".action = switch-preset-window-height;
        "Mod+Shift+F".action = fullscreen-window;
        "Mod+Ctrl+F".action = maximize-column;
        "Mod+F".action = expand-column-to-available-width;
        "Mod+C".action = center-column;

        "Print".action.screenshot.show-pointer = true;
        "Ctrl+Print".action.screenshot-window.write-to-disk = true;
        
        "Mod+U".action = set-dynamic-cast-window;
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
      hotkey-overlay.skip-at-startup = true;
      
      overview = {
       # backdrop-color = colors.base01;
      };

      layout = {
        default-column-display = "tabbed";
        tab-indicator = {
          enable = true;
          gaps-between-tabs = 5.5;
          corner-radius = 10;
          hide-when-single-tab = true;
        };
        
      };

  window-rules = [
      {
        matches = [{app-id = "org.wezfurlong.wezterm";}];
        default-column-width = {proportion = 0.5;};
        #border.active.color = colors.base0B;
      }
      {
        matches = [{app-id = "steam";}];
        default-column-width = {proportion = 1.0;};
       #border.active.color = colors.base0D;
      }
      {
        matches = [
          {
            title = "Friends List";
            app-id = "steam";
          }
        ];
        default-column-width = {fixed = 340;};
      }
      {
        matches = [{app-id = "Waydroid";}];
        default-column-width = {fixed = 1256;};
      }
      {
        matches = [{app-id = "Firefox";}];
        #border.active.color = colors.base09;
      }
      ];
    };
  };
} 
