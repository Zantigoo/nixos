{pkgs, ...}: {
  services.locate = {
    enable = true;
    interval = "never";
  };
}
