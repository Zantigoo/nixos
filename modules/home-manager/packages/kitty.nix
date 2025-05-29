{...}: {
  programs.kitty = {
    enable = false;
    extraConfig = "
    confirm_os_window_close 0
    ";
  };
}
