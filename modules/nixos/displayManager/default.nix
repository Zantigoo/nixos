{pkgs, ...}: {
  # sddm
  #services.displayManager.sddm = {
    # enable = true;
    

    # enable experimental wayland support
    #wayland.enable = true;
    #theme = "catppuccin-sddm-corners";
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet -t -r --remember-session --asterisks niri-session";
        user = "greeter";
      };
    };
  };
}
