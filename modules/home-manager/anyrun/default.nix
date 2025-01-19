{
  pkgs,
  inputs,
  config,
  ...
}: {
  imports = [
    inputs.anyrun.homeManagerModules.default
  ];

  programs.anyrun = {
    enable = true;

    config = {
      plugins = with inputs.anyrun.packages.${pkgs.system}; [
        applications
        rink
        shell
        translate
      ];
      showResultsImmediately = false;
      width.fraction = 0.3;
      y.absolute = 70;
      hidePluginInfo = false;
      closeOnClick = true;
      maxEntries = 30;
    };

    extraCss = ''
        * {
        all: unset;
        font-size: 1rem;
        font-family: 'Fira Code';
        }


        #match.activatable {
        border-radius: 16px;
        padding: 0.3rem 0.9rem;
        margin-top: 0.01rem;
        }
        #match.activatable:first-child {
        margin-top: 0.7rem;
        }
        #match.activatable:last-child {
        margin-bottom: 0.6rem;
        }

        #match.activatable {
        border-radius: 10px;
        padding: 0.3rem;
        margin-top: 0.01rem;
        margin-bottom: 0;
        }

        #match:selected,
        #match:hover {
         background: #fab387;
         color:#1e1e2e;
        }

        #entry {
        background: #313244;
        border: 3px solid #fab387;
        border-radius: 16px;
        margin: 0.5rem;
        padding: 0.3rem 1rem;
        }

        list > #plugin {
        background: #1e1e2e;
        border-radius: 16px;
        padding: 1rem;

        margin: 0.5rem;
        }
        list > #plugin:first-child {
        margin-top: 0.3rem;
        }
        list > #plugin:last-child {
        margin-bottom: 0.3rem;
        }

        box#main {
        background: #181825;
        border-radius: 16px;
        padding: 0.3rem;
        }
    
    '';

    extraConfigFiles."applications.ron".text = ''
      Config(
        desktop_actions: false,
        max_entries: 10,
      )
    '';
  };
}