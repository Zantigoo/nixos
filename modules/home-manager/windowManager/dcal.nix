{ inputs,...}: 
{
  imports = [
    inputs.dankcalendar.homeModules.dank-calendar
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
