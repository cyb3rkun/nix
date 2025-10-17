# .config/home-manager/rofi.nix
{
	config,
	pkgs,
	...
}: {
	programs.rofi.enable = true;
	xdg.configFile."rofi".source = ./dotfiles/rofi;
}
