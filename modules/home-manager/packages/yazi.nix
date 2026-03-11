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
  };
}
