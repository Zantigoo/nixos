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

    imports = [
    inputs.nixvim.homeModules.nixvim 
    ./plugins.nix
    ];
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
            
    };
}
