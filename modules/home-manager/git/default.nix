{ ... }:

{
  programs.git = {
    enable = true;
    settings.userName = "Zantigo";
    settings.userEmail = "Zantigo@pm.me";
  };

  # github cli
  programs.gh.enable = true;

  programs.lazygit = {
    enable = true;
  };
}

