{...} : 
  
  {
    programs.wezterm = {
      enable = true;
      enableZshIntegration = true;
      extraConfig = ''
      return {
        hide_tab_bar_if_only_one_tab = true,
        use_fancy_tab_bar = false,
        keys = {
          { key = "q", mods = "SHIFT|CTRL", action = wezterm.action.CloseCurrentPane { confirm = true } },
        }
      }
      '';
      };
    
  }
