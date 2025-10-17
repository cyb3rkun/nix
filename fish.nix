# .config/home-manager/fish.nix
{
	config,
	pkgs,
	...
}: {
	programs.fish.enable = true;
	xdg.configFile."fish".source = ./dotfiles/fish;
}
