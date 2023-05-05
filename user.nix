{ pkgs, misc, ... }: {
  # This file will never be modified by fleek
  # configs mentioned here must be listed in ~/fleek.yml #programs array or you will get errors

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
  home.shellAliases = {
    ls = "lsd";
  };
}
