{ config, lib, ... }:

{
  programs.yazi = {
    enable = true;
    enableBashIntegration = true;

    settings = {
      manager = {
        ratio = [
          0
          1
          1
        ];
        sort_by = "modified";
        sort_sensitive = false;
        sort_reverse = true;
        linemode = "size";
        show_hidden = false;
      };
    };

    theme = {
      manager = {
        folder_offset = [
          1
          0
          1
          0
        ];
        preview_offset = [
          1
          1
          1
          1
        ];
      };

    };
  };

  home.shellAliases = {
    y = "yazi";
    sy = "sudo yazi";
  };
}
