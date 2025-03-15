{
 pkgs,
 ...
}: {

   services.minecraft-server = {
     enable = false;
     eula = true;
     openFirewall = true;
     #package = pkgs.minecraft-server_1_21_4;
   };
   
 }
