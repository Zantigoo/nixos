{...}: {
  programs.nixvim.plugins = {
    lualine.enable = true;
    auto-save.enable = true;
    which-key.enable = true;
    flash.enable = true;
    conform-nvim.enable = true;
    yazi.enable = true;
    dap.enable = true;
    trouble.enable = true;
    oil.enable = true;
    wezterm.enable = true;
    cmp = {
      enable = true;
      autoEnableSources = false;
      settings.sources = [
        { name = "nvim_lsp"; }
        { name = "path"; }
        { name = "buffer"; }
      ];
    };
    mini = {
     enable = true;
    };
    treesitter = {
      settings = {
        auto_install = true;
        ensure_installed = "all";
        enable = true;
        folding = true;
        highlight = {
          enable = true;
          additional_vim_regex_highlighting = true;
        };
        indent = {
          enable = true;
        };
      };
    };
    telescope = {
      enable = true;
    };
    web-devicons = { #For Telescope 
      enable = true;
    };
    lsp = {
      enable = true;
      servers = {
        jsonls.enable = true;
        html.enable = true;
        nixd.enable = true;
        cssls.enable = true;
        ts_ls.enable = true;
        vue_ls.enable = true;
        golangci_lint_ls.enable = true;
      };
    };
    lint = {
      enable = true;
    };
    emmet = {
      enable = true;
      settings = {
        leader = "<C-Z>";
        mode = "ins";
        settings = {
          html = {
            default_attributes = {
              option = {
              };
              textarea = {
                cols = 10;
                rows = 10;
              };
            };
            snippets = {
              "html:5" = ''
              <!DOCTYPE html>
              <html lang=\"$\{lang}\">
              <head>
              \t<meta charset=\"$\{charset}\">
              \t<title></title>
              \t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
              </head>
              <body>\n\t$\{child}|\n</body>
              </html>
             '';
            };
          };

          variables = {
            lang = "ja";
          };
        };
      };
    };
  };  
}
