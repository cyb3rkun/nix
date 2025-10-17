{
	config,
	pkgs,
	...
}: {
	xdg.configFile."rofi".source = ./dotfiles/rofi;
}
