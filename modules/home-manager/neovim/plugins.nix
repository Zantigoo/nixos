{...}: {
  programs.nixvim.plugins = {
    lualine.enable = true;
    auto-save.enable = true;
    which-key.enable = true;
    flash.enable = true;
    conform-nvim.enable = true;
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
  };  
}
