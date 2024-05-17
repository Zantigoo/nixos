{...}: {
  imports = [
    ../default.nix
    ./options
    ./hyprland
    ./theme
    ./shell
    ./packages
    ./git
    ./keyring
    ./foot
   #./neovim-flake
    ./rofi
    ./gaming
    ./waybar
    ./wlogout
  ];

}
