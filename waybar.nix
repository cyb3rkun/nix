# .config/home-manager/hypr.nix
{
	config,
	pkgs,
	...
}: {
	xdg.configFile."waybar".source = ./dotfiles/waybar;
}
