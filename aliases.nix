{ pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
   home.shellAliases = {
    "aptup" = "sudo bash -c 'apt-get update && apt-get -y upgrade && apt-get -y dist-upgrade'";
    
    "fleeks" = "cd ~/.local/share/fleek";
    
    "ga" = "git add";
    
    "gb" = "git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'";
    
    "gbr" = "git branch";
    
    "gco" = "git checkout";
    
    "gd" = "git diff";
    
    "gs" = "git status";
    
    "gvl" = "git log | vim -c 'set keywordprg=git\ show' -R -";
    
    "lsblk" = "lsblk -o name,fstype,size,label,uuid";
    
    "vcon" = "nvim -p $(git status | grep 'both modified' | cut -d: -f2)";
    
    # bat --plain for unformatted cat
    catp = "bat -P";
    
    # replace cat with bat
    cat = "bat";
    };
}
