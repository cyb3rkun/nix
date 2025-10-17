# .config/home-manager/hypr.nix
{
	config,
	pkgs,
	...
}: {
	xdg.configFile."hypr".source = ./dotfiles/hypr;
}
