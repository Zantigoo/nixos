{ ... }:

{
 services.syncthing = {
    enable = false;
    openDefaultPorts = true;
    user = "zantigo";
    group = "users";
    dataDir = "/home/zantigo";
    settings.gui = {
        user = "Zantigo";
    };
 };

}
