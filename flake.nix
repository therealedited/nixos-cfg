{
  description = "Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05"; 
    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

    outputs = {nixpkgs, home-manager, ...} @ inputs:
      let
	system = "x86_64-linux";
	pkgs = nixpkgs.legacyPackages.${system};
      in {
        nixosConfigurations = {
          tamamo = nixpkgs.lib.nixosSystem {
            specialArgs = { inherit inputs; };
            modules = [
              ./home/configuration.nix
            ];
          };
        };
	homeConfigurations = {
          tamamo = home-manager.lib.homeManagerConfiguration {
	    inherit pkgs;
            modules = [ ./users/tamamo/home.nix ];
	  };
	}; 
      };
}
