# wezterm.nix
{
	config,
	pkgs,
	...
}: {
	# programs.wezterm.enable = true;
	xdg.configFile."wezterm".source = ./dotfiles/wezterm;
}
