# .config/home-manager/nvim.nix
{
	config,
	pkgs,
	...
}: {
	programs.neovim.enable = true;
	xdg.configFile."nvim".source = ./dotfiles/nvim;
}
