{ config, pkgs, ... }: 
{
	imports = [
		./home-packages.nix
		./modules
	];

	home = {
		username = "ywyh";
		homeDirectory = "/home/ywyh";
		stateVersion = "24.11";
	};
}