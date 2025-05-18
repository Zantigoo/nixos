{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.home-manager.nixosModules.default
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ../../modules/nixos/packages/syncthing.nix
  ];

  # enable the zsh shell
  programs.zsh.enable = true;

  # set default user shell
  users.defaultUserShell = pkgs.zsh;

  # define my main user account
  users.users.zantigo = {
    isNormalUser = true;
    description = "zantigo";
    extraGroups = [
      "networkmanager"
      "wheel"
      "storage"
      "power"
      "libvirtd"
    ];
  };

  # set home manager
  home-manager = {
    extraSpecialArgs = {inherit inputs;};
    useGlobalPkgs = true;
    users = {
      "zantigo" = import ./home.nix;
    };
  };

  system.stateVersion = "23.11"; 
}
