{
  inputs,
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

    settings = {
      # default variables
      "$mainMod" = "SUPER";
      "$shiftMod" = "SUPER SHIFT";
      "$terminal" = "kitty";
      "$editor" = "nvim";
      "$browser" = "firefox";
      "$launcher" = "anyrun";   
      "$fileManager" = "nautilus";
      "$taskManager" = "btop";
      "$powermenu" = "hyprpanel toggleWindow powerdropdownmenu";

      exec-once = [
        "hyprpanel"
        "blueman-applet"
        "clipse -listen"
        #"walker --gapplication-service"
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

      workspace = [
        "1,monitor:DP-1"
        "2,monitor:DP-2"
        "3,monitor:DP-1"
        "4,monitor:DP-2"
        "5,monitor:DP-1"
        "6,monitor:DP-2"
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
        "col.inactive_border" = "0x44cdd6f4";
        "col.active_border" = "0xfffab387";

        layout = "dwindle";
      };

      decoration = {
        rounding = "8";

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

        # control scratch pad
        "$mainMod, x, togglespecialworkspace"
        "SUPER_SHIFT, x, movetoworkspace, special"

        # lock Hyprland
        "$mainMod, l, exec, hyprlock"
        "$mainMod, ESCAPE, exec, $powermenu"

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

        "$mainMod, 1, workspace, r-1"
        "$mainMod, 2, workspace, r+1"

        "$mainMod SHIFT, 1, movetoworkspace, r-1"
        "$mainMod SHIFT, 2, movetoworkspace, r+1"

        "$mainMod, TAB, workspace, m+1"
        "$mainMod SHIFT, TAB, movetoworkspace, m+1"
        #"ALT, TAB, swapactiveworkspaces DP-1 DP-2"
        



        #Hyprnome Switching
        /*
        "SUPER, 1, exec, hyprnome --previous"
        "SUPER, 2, exec, hyprnome"
        "SUPER_SHIFT, 1, exec, hyprnome --previous --move"
        "SUPER_SHIFT, 2, exec, hyprnome --move"
        "SUPER, TAB, exec, hyprnome --cycle"
        */
        

        # screenshotting
        ",PRINT, exec, hyprshot -m region"
        "$mainMod, PRINT, exec, hyprshot -m output"
        "$mainMod SHIFT, PRINT, exec, hyprshot -m window"

        # colorpicker
        "$mainMod SHIFT, c, exec, hyprpicker -a"
        
        # pin window
        "$mainMod, s, pin"
        #open clipboard
        "SUPER CTRL, v, exec, $terminal --class clipse -e 'clipse'"
   
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
