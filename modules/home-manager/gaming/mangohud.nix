{...}: {
  programs.mangohud = {
    enable = true;
    enableSessionWide = false;
    settings = {
      blacklist = "nautilus";
    };
  };
}
