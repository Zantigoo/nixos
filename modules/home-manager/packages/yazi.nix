{
  ...
}:
{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    shellWrapperName = "yazi";
    settings = {
      manager = {
        show_hidden = true;
      };
      preview = {
        wrap = "yes";
      };
    };
    vfs = {
      sftp = {
        relic = {
          host = "192.168.1.70";
          port = 22;
          user = "zantigo";
        };
      };
    };
  };
}
