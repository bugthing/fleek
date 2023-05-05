{ pkgs, misc, ... }: {
 home.sessionPath = [ 
    "$HOME/bin"
    "$HOME/scripts"
    "$HOME/.local/bin"
 ];
}
