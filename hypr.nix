# hypr.nix
{
	config,
	pkgs,
	...
}: {
	home.packages = with pkgs; [
		# hyprlock
		# waybar
		# grimblast
		# grim

	];
	xdg.configFile."hypr".source = ./dotfiles/hypr;
}
