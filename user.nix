{ pkgs, misc, ... }: {
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.bash = {
    enable = true;
    bashrcExtra = ''
      # User specific aliases and functions
      if [ -d ~/.bashrc.d ]; then
        for rc in ~/.bashrc.d/*; do
          if [ -f "$rc" ]; then
            . "$rc"
          fi
        done
      fi
    '';
  };
}
