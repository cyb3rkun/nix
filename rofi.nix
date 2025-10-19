# rofi.nix
{
	config,
	pkgs,
	...
}: {
	xdg.configFile."rofi".source = ./dotfiles/rofi;
}
