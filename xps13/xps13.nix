{ pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
    home.username = "benjamin";
    home.homeDirectory = "/home/benjamin";
    programs.git = {
        enable = true;
        aliases = {
            pushall = "!git remote | xargs -L1 git push --all";
            graph = "log --decorate --oneline --graph";
            add-nowhitespace = "!git diff -U0 -w --no-color | git apply --cached --ignore-whitespace --unidiff-zero -";
        };
        userName = "Ben Martin";
        userEmail = "benjamin247365@hotmail.com";
        extraConfig = {
            feature.manyFiles = true;
            init.defaultBranch = "main";
            gpg.format = "ssh";
        };

        signing = {
            key = "~/.ssh/bugthing";
            signByDefault = builtins.stringLength "~/.ssh/bugthing" > 0;
        };

        lfs.enable = true;
        ignores = [ ".direnv" "result" ];
  };
}
