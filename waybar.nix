# waybar.nix
{
	config,
	pkgs,
	...
}: {
	xdg.configFile."waybar".source = ./dotfiles/waybar;
}
