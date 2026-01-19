{...}: {
  programs.mangohud = {
    enable = false;
    enableSessionWide = false;
    settings = {
      blacklist = "nautilus";
    };
  };
}
