{...}: {
  imports = [
    ../default.nix
    #./anyrun
    ./windowManager
    ./theme
    ./shell
    ./packages
    ./git
    ./keyring
    ./rofi
    ./gaming
    #./waybar
    #./wlogout
    #./walker
    ./neovim
  ];

}
