{config, ...}: {
  programs.kitty = {
    enable = true;
    font.name = "Fira Code";
    font.size = 12;

    catppuccin = {
        enable = true;
        flavor = "mocha";
    };
  };
}