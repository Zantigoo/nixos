{ ... }:

{
  programs.git = {
    enable = true;
    userName = "Zantigo";
    userEmail = "Zantigo@pm.me";
  };

  # github cli
  programs.gh.enable = true;

  programs.lazygit = {
    enable = true;
  };
}

