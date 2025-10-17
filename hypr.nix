# .config/home-manager/hypr.nix
{
	config,
	pkgs,
	...
}: {
	programs.hyprland.enable = true;
	xdg.configFile."hypr".source = ./dotfiles/hypr;
}
