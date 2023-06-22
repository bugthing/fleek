{
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
  description = "Fleek Configuration";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Home manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # Fleek
    fleek.url = "github:ublue-os/fleek";

    # Overlays
    

  };

  outputs = { self, nixpkgs, home-manager, fleek, ... }@inputs: {

    # Available through 'home-manager --flake .#your-username@your-hostname'
    
    homeConfigurations = {
    
      "benjamin@xps15" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance
        extraSpecialArgs = { inherit inputs; }; # Pass flake inputs to our config
        modules = [
          ./home.nix 
          ./path.nix
          ./shell.nix
          ./user.nix
          ./aliases.nix
          ./programs.nix
          # Host Specific configs
          ./xps15/benjamin.nix
          ./xps15/custom.nix
          # self-manage fleek
          ({
           nixpkgs.overlays = [];
          })

        ];
      };
      
      "benjamin@xps13" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance
        extraSpecialArgs = { inherit inputs; }; # Pass flake inputs to our config
        modules = [
          ./home.nix 
          ./path.nix
          ./shell.nix
          ./user.nix
          ./aliases.nix
          ./programs.nix
          # Host Specific configs
          ./xps13/benjamin.nix
          ./xps13/custom.nix
          # self-manage fleek
          ({
           nixpkgs.overlays = [];
          })

        ];
      };
      
      "benjamin@terra" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance
        extraSpecialArgs = { inherit inputs; }; # Pass flake inputs to our config
        modules = [
          ./home.nix 
          ./path.nix
          ./shell.nix
          ./user.nix
          ./aliases.nix
          ./programs.nix
          # Host Specific configs
          ./terra/benjamin.nix
          ./terra/custom.nix
          # self-manage fleek
          ({
           nixpkgs.overlays = [];
          })

        ];
      };
      
    };
  };
}
