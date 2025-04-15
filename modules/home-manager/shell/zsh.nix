{...} : {

  # zsh 
  programs.zsh = { 
    # enable zsh
    enable = true;

    # enable oh-my-zsh
    oh-my-zsh.enable = true;

    # enable plugins
    enableCompletion = true;
    autosuggestion.enable = true;
  };

}
