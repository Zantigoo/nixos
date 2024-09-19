{
  pkgs,
  config,
  ...
}: {
  imports = [
    ./hyprlock.nix
    ./hyprpaper.nix
    ./hyprpicker.nix
  ];

  

  wayland.windowManager.hyprland = {
    enable = true;

    settings = with config.colorScheme.palette; {
      # default variables
      "$mainMod" = "SUPER";
      "$shiftMod" = "SUPER SHIFT";
      "$terminal" = "foot";
      "$editor" = "nvim";
      "$browser" = "firefox";
      "$launcher" = "anyrun";   
      "$fileManager" = "nautilus";
      "$taskManager" = "btop";

      exec-once = [
        "hyprpanel"
        "blueman-applet"
        "clipse -listen"
      ];

      env = [
        # use igpu for hyprland
        # "WLR_DRM_DEVICES,/dev/dri/card1"

        # xdg
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"

        # qt
        "QT_AUTO_SCREEN_SCALE_FACTOR,1"
        "QT_QPA_PLATFORM,wayland;xcb"
        "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"

        # utilities
        "TERMINAL,$terminal"
        "EDITOR,$editor"
        "BROWSER,$browser"

        # cursor
        "XCURSOR_THEME,${config.gtk.cursorTheme.name}"
      ];

      windowrulev2 = [
        # firefox
        "float, title:^(Picture-in-Picture)$"


        # steam
        "float, class:(steam), title:(Friends List)"
        "nofocus, class:^(steam)$, title:^()$"

        #clipse
        "float, class:(clipse)"
        "size 622 652,class:(clipse)"
      ];

      monitor = [
        "DP-1, 1920x1080, 0x0, 1"
        "DP-2, 1920x1080, -1920x0, 1"
      ];

      input = {
        sensitivity = "0";
        accel_profile = "flat";

        # follow_mouse = "2";
      };

      # device = {
      #   "elan1300:00-04f3:3057-touchpad".enabled = "false";
      # };

      general = {
        gaps_in = "5";
        gaps_out = "15";

        border_size = "5";
        "col.inactive_border" = "0x40${base05}";
        "col.active_border" = "0xff${base0E}";

        layout = "dwindle";
      };

      decoration = {
        rounding = "8";

        drop_shadow = "false";
        # shadow_range = "4";
        # shadow_render_power = "3";
        # "col.shadow" = "rgba(1a1a1aee)";

        # dim_inactive = "true";

        blur = {
          enabled = "true";
          size = "8";
          passes = "4";
          popups = "true";
        };
      };

      layerrule = [
        "ignorezero, rofi"
        
      ];

      bind = [
        
        # apps
        "$mainMod, return, exec, $terminal"
        "$mainMod, q, exec, $browser"
        "$mainMod, space, exec, $launcher"
        "$mainMod, e, exec, $fileManager"
        ##"$mainMod, Num_lock, exec, $calculator"
        
        "$mainMod, F, fullscreen, 0"


        # toggle floating window
        "$mainMod, v, togglefloating"

        # close active window
        "$mainMod, c, killactive"

        # close hyprland session
        "$mainMod, m, exit"

        # lock Hyprland
        "$mainMod, l, exec, hyprlock"
        "$mainMod, ESCAPE, exec, wlogout"

        # move focus
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        # switch workspaces
        #"$mainMod, 1, workspace, 1"
        #"$mainMod, 2, workspace, 2"
        #"$mainMod, 3, workspace, 3"
        #"$mainMod, 4, workspace, 4"
        #"$mainMod, 5, workspace, 5"
        #"$mainMod, 6, workspace, 6"
        #"$mainMod, 7, workspace, 7"
        #"$mainMod, 8, workspace, 8"
        #"$mainMod, 9, workspace, 9"

        

        # move active window to workspace
        #"$mainMod SHIFT, 1, movetoworkspace, 1"
        #"$mainMod SHIFT, 2, movetoworkspace, 2"
        #"$mainMod SHIFT, 3, movetoworkspace, 3"
        #"$mainMod SHIFT, 4, movetoworkspace, 4"
        #"$mainMod SHIFT, 5, movetoworkspace, 5"
        #"$mainMod SHIFT, 6, movetoworkspace, 6"
        #"$mainMod SHIFT, 7, movetoworkspace, 7"
        #"$mainMod SHIFT, 8, movetoworkspace, 8"
        #"$mainMod SHIFT, 9, movetoworkspace, 9"

        # scroll through workspaces
        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"

        #Hyprnome Switching
        "SUPER, 1, exec, hyprnome --previous"
        "SUPER, 2, exec, hyprnome"
        "SUPER_SHIFT, 1, exec, hyprnome --previous --move"
        "SUPER_SHIFT, 2, exec, hyprnome --move"
        "SUPER, TAB, exec, hyprnome --cycle"
  

        # screenshotting
        "$mainMod, PRINT, exec, hyprshot -m region"
        ", PRINT, exec, hyprshot -m output"
        "$mainMod SHIFT, PRINT, exec, hyprshot -m window"

        # colorpicker
        "$mainMod SHIFT, c, exec, hyprpicker -a"

        # pin window
        "$mainMod, s, pin"
        
        "$shiftMod, v, exec, $terminal clipse"
   
      ];

      bindm = [
        # move & resize windows
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];

      binde = [
        # pipewire volume control
        ", XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
        ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"

        # brightness control
        ", XF86MonBrightnessDown, exec, brightnessctl set 5%-"
        ", XF86MonBrightnessUp, exec, brightnessctl set +5%"
      ];

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };
    };
  };
}
