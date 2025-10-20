# nvim.nix
{
	config,
	pkgs,
	...
}: {
	# programs.neovim.enable = true;
	programs.neovim = {
		enable = true;
		defaultEditor = true;
	};
	xdg.configFile."nvim".source = ./dotfiles/nvim;
}
