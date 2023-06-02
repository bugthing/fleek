{ pkgs, misc, ... }: {
  # FEEL FREE TO EDIT: This file is NOT managed by fleek. 

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
