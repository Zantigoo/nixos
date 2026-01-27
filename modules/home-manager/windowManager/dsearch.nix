{ inputs,...}: 
{
  imports = [
    inputs.danksearch.homeModules.dsearch
  ];

  programs.dsearch = {
    enable = true;
    config = {
      text_extensions = [
        ".txt" ".md" ".go" ".py" ".js" ".ts"
        ".jsx" ".tsx" ".json" ".yaml" ".yml"
        ".toml" ".html" ".css" ".rs"
      ];
      index.paths = [
        "~"
      ];
    };
  };
}
