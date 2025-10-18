# fish.nix
{
	config,
	pkgs,
	...
}: {
	xdg.configFile."fish".source = ./dotfiles/fish;
}
