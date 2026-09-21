{ pkgs, ... }: {
  imports = [
    ./fonts.nix
    ./syncthing.nix
    ./zoxide.nix
  ];

  # system packages
  environment.systemPackages = with pkgs; [

    # cli tools
    curl
    wget
    killall
    tree
    fastfetch
    jq
    openssl
    pandoc
    brightnessctl
    pulseaudio
    ffmpeg
    ripgrep
    bluetui
    rclone
    nmap
    python3
    fd
    eza

    #dependants

    pango
    nautilus
    nautilus-python
    papirus-icon-theme
    tuigreet
    distrobox

  ];

  programs.gnome-disks.enable = true;
  programs.nautilus-open-any-terminal = {
    enable = true;
  };

  services.udev.packages = with pkgs; [
    via
  ];
}
