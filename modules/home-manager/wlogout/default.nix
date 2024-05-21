{  
  pkgs,
  config,
  inputs,
  ...
} : 

{

    programs.wlogout = {
        enable = true;
        layout = [
            {
                label = "hibernate";
                action = "systemctl hibernate";
                text = "Hibernate";
                keybind = "h";
            }
            {
                label = "shutdown";
                action = "systemctl poweroff";
                text = "Shutdown";
                keybind = "x";
            }
            {
                label = "suspend";
                action = "systemctl suspend";
                text = "Suspend";
                keybind = "s";
            }
            {
                label = "reboot";
                action = "systemctl reboot";
                text = "Reboot";
                keybind = "r";
            }
        ];
        style = ''
            window { 
                font-family: JetBrains Mono Nerd Font;
                font-size: 14pt;
            }
        '';
    };
}