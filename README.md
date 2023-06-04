# Fleek Configuration

nix home-manager configs created by [fleek](https://github.com/ublue-os/fleek).

## Reference

- [home-manager](https://nix-community.github.io/home-manager/)
- [home-manager options](https://nix-community.github.io/home-manager/options.html)

## Usage

Aliases were added to the config to make it easier to use. To use them, run the following commands:

```bash
# To change into the fleek generated home-manager directory
$ fleeks
# To apply the configuration
$ apply-$(hostname)
```

Your actual aliases are listed below:
    aptup = "sudo bash -c 'apt-get update && apt-get -y upgrade && apt-get -y dist-upgrade'";

    fleeks = "cd ~/.local/share/fleek";

    ga = "git add";

    gb = "git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'";

    gbr = "git branch";

    gco = "git checkout";

    gd = "git diff";

    gs = "git status";

    gvl = "git log | vim -c 'set keywordprg=git\ show' -R -";

    lsblk = "lsblk -o name,fstype,size,label,uuid";

    vcon = "nvim -p $(git status | grep 'both modified' | cut -d: -f2)";
