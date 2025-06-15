{config, ...}: {
  programs.foot = {
    enable = false;

    settings = {
      main = {
        font = "Fira Code:size=12";
      };

      colors = with config.colorScheme.palette; {
        alpha = "1";
        foreground = base05;
        background = base00;

        # regular
        regular0 = base03;
        regular1 = base08;
        regular2 = base0B;
        regular3 = base0A;
        regular4 = base0D;
        regular5 = base0E;
        regular6 = base0C;
        regular7 = base05;

        # bright
        bright0 = base04;
        bright1 = base08;
        bright2 = base0B;
        bright3 = base0A;
        bright4 = base0D;
        bright5 = base0E;
        bright6 = base0C;
        bright7 = base05;
      };
    };
  };
}
