# .config/home-manager/flake.nix
{
	description = "Home Manager configuration of cyb3r";

	inputs = {
		# Specify the source of Home Manager and Nixpkgs.
		nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
		home-manager = {
			url = "github:nix-community/home-manager/release-25.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		nixgl.url = "github:guibou/nixGL";
	};

	outputs = {
		nixpkgs,
		home-manager,
		...
	}: let
		system = "x86_64-linux";
		pkgs = nixpkgs.legacyPackages.${system};
	in {
		homeConfigurations."cyb3r" =
			home-manager.lib.homeManagerConfiguration {
				inherit pkgs;

				# Specify your home configuration modules here, for example,
				# the path to your home.nix.
				modules = [
					./home.nix
					./nvim.nix
					./wofi.nix
					./rofi.nix # WARN: rofi not working yet
					./fish.nix
					./wezterm.nix
					./hypr.nix
				];

				# Optionally use extraSpecialArgs
				# to pass through arguments to home.nix
			};
	};
}
