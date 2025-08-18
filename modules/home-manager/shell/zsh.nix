{...} : {

  # zsh 
  programs.zsh = { 
    # enable zsh
    enable = true;

    # enable oh-my-zsh
    oh-my-zsh = {
      enable = true;
      plugins = [
        "ssh"
        "sudo"
      ];
    };
    
    # enable plugins
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
  };

}
