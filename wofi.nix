# .config/home-manager/wofi.nix
{
	config,
	pkgs,
	...
}: {
	programs.wofi.enable = true;
	xdg.configFile."wofi".source = ./dotfiles/wofi;
}
