{...}: {
  programs.mangohud = {
    enable = false;
    enableSessionWide = true;
    settings = {
      blacklist = "nautilus";
    };
  };
}
