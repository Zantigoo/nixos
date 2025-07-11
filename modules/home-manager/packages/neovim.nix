{
inputs, 
...
}: {
    /*imports = [ inputs.nvf.homeManagerModules.default ];
    programs.nvf = {
        enable = true;
        # your settings need to go into the settings attribute set
        # most settings are documented in the appendix
        settings = {
            vim.viAlias = false;
            vim.vimAlias = true;
            vim.lsp = {
                enable = true;
            };
        };
    };*/

    imports = [ inputs.nixvim.homeManagerModules.nixvim ];
    programs.nixvim = {
        enable = true;
          opts = {
						# Tab settings			
            tabstop = 2;
            shiftwidth = 2;
						expandtab = true;

						smartindent = true;
						cursorline = true;
						breakindent = true;
						cmdheight = 0;
						splitright = true;
						mouse = "a";
						number = true;
						clipboard = "unnamedplus";
						showmode = false;
				    };

            
          plugins = {
            lualine.enable = true;
            auto-save.enable = true;
            treesitter = {
              enable = true;
              folding = true;
              };
            telescope = {
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
								volar.enable = true;
								golangci_lint_ls.enable = true;
								};
				    };
				  };
    };
}
