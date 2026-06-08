{
  pkgs,
  lib,
  ...
} : {
  
  programs.helix = {
    enable = true;
    languages.language = [
      {
        name = "nix";
        auto-format = true;
        formatter.command = lib.getExe pkgs.nixfmt; 
      }
      {
        name = "json";
        auto-format = true;
        formatter.command = lib.getExe pkgs.vscode-json-languageserver;
      }
    ];
    settings = {
      editor = {
        lsp = {
          display-messages = true;
          display-inlay-hints = true;
        };
        default-yank-register="+";
        color-modes = true;
        statusline = {
          left = ["mode" "spinner" "file-name" "file-modification-indicator"];
          center = ["file-type"];
          right = ["diagnostics" "selections" "position" "file-encoding"];
        };
        auto-save = {
          after-delay.enable = true;
          after-delay.timeout = 300;
        };
      };
    };
  };
}
