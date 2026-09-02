{ ... }: {

  programs.noctalia = {
    enable = false;
    systemd.enable = true;
  };
}
