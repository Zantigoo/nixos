{...}: {
  imports = [
    ../default.nix
    ./windowManager
    #./theme
    ./shell
    ./packages
    ./git
    ./keyring
    ./neovim
  ];

}
