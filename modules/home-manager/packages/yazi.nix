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
      services = {
        lumacmini = {
          host = "192.168.20.247";
          port = 22;
          type = "sftp";
          user = "lumacmini";
          password = "1776";
        };
        relic = {
          host = "192.168.1.70";
          port = 22;
          type = "sftp";
          user = "zantigo";
        };
      };
    };
  };
}
