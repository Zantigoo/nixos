{ ... }:

{
  programs.git = {
    enable = true;
    signing.format = "openpgp";
      settings = {
        user = {
          name = "Zantigo";
          email = "Zantigo@pm.me";
        };
      };
  };

  # github cli
  programs.gh.enable = true;

  programs.lazygit = {
    enable = true;
  };
}

