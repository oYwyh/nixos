{ config, pkgs, ... }: 
{
	imports = [
		./home-packages.nix
		./modules
	];

	home = {
		username = "ywyh";
		homeDirectory = "/home/ywyh";
		stateVersion = "unstable";
	};
}