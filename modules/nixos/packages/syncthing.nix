{ ... }:

{
 services.syncthing = {
    enable = true;
    openDefaultPorts = true;
    user = "zantigo";
    group = "users";
    dataDir = "/home/zantigo";
    settings.gui = {
        user = "Zantigo";
        password = "Phonics8-Shock-Harpist";
    };
 };

}