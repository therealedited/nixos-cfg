{
  description = "Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05"; 
    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
  };

    outputs = {nixpkgs, home-manager, ...} @ inputs: {
    nixosConfigurations.tamamo = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./home/configuration.nix
      ];
    };
  };
}
