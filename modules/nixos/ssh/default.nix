{...}: {
  # enable the ssh daemon.
  services.openssh = {
    enable = true;
  };
  programs.ssh = {
    extraConfig = "
      Host relic
        HostName relic
        User zantigo
        IdentityFile ~/.ssh/relic
    ";
  };

}
