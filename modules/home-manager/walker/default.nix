{
  inputs,
  ...
}: { 
    imports = [
        inputs.walker.homeManagerModules.default
    ];

    programs.walker = {
        enable = true;
        runAsService = true;

        # All options from the config.json can be used here.
        config = {
            search.placeholder = "Type Here";
            ui.fullscreen = true;
            list = {
            height = 400;
            };
            websearch.prefix = "?";
            switcher.prefix = "/";
        };
        
    };

}
