{  
  pkgs,
  config,
  inputs,
  ...
} : 

{
    
    programs.wlogout = {
        enable = false;
        layout = [
            {
                label = "lock";
                action = "hyprlock";
                text = "lock";
                keybind = "l";
            }
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


        * {
            background-image: none;
        }

        window {
            background-color: rgba(12, 12, 12, 0.75);
        }
        button {
            font-family: "FiraCode";
            font-size: 20px;
            color: #ffffff;
            background-color: #1e1e2e;
            border-style: solid;
            border-width: 2px;
            border-radius: 25%;
            border-color: #cba6f7;
            background-repeat: no-repeat;
            background-position: center;
            background-size: 25%;
            margin: 50px;
        }

        button:focus, button:active, button:hover {
            background-color: #cba6f7;
            outline-style: none;
            border-color: #1e1e2e;
        }
                '';
    };
}