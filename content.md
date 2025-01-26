my nixos configurations tree

> home-manager
    - home.nix
    - home-pacakges.nix
> nixos
    > modules
        - boot.nix
        - hyprland.nix
        - net.nix
        - nix.nix
        - nvidia.nix
        - timezone.nix
        - user.nix
- configuration.nix
- flake.lock
- flake.nix
- hardware-configuration.nix

the code for each file

`home.nix`
```nix
	{ config, pkgs, ... }: 
	{
		imports = [
				./home-packages.nix
		];

		home = {
			username = "ywyh";
			homeDirectory = "/home/ywyh";
			stateVersion = "24.11";
		};
	}
```

`home-packages.nix`
```nix
	{ pkgs, ... }: {
		nixpkgs.config.allowUnfree = true;

		home.packages = with pkgs; [
			kitty
			lshw
			firefox
			vscode
			git
			brightnessctl
			home-manager
		];
	}
```

`configuration.nix`
```nix
	{ pkgs, ... }:
	{
		imports =
			[ # Include the results of the hardware scan.
			./hardware-configuration.nix
			./nixos/modules
			];

		networking.hostName = "nixos";

		environment.systemPackages = [ pkgs.home-manager ];

		system.stateVersion = "24.11";
	}
```

`flake.nix`
```nix
	{ 
		description = "Main system configurations"; 
		
		inputs = {  
			nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";

			home-manager = {
				url = "github:nix-community/home-manager/release-24.11";
				inputs.nixpkgs.follows = "nixpkgs";
			};

		};

		outputs = { nixpkgs, home-manager, ... }: let 
				user = "ywyh";		
				homeStateVersion = "24.11";
			system = "x86_64-linux";
		in {
			nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
				inherit system;
				modules = [ ./configuration.nix  ];
			};
			
			homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
				pkgs = nixpkgs.legacyPackages.${system};
				modules = [
					./home-manager/home.nix
				];
			};
		};
	}
```

`boot.nix`
```nix
	{
		boot.loader.systemd-boot.enable = true;
		boot.loader.efi.canTouchEfiVariables = true;
	}
```

`hyprland.nix`
```nix
{
	programs.hyprland = {
		enable = true;
		withUWSM = true;
		# xwayland.enable = false;
	};
	#   security.pam.services.hyprlock = {};
}
```

`net.nix`
```nix
	{
		networking.networkmanager.enable = true;
	}
```

`nix.nix`
```nix
	{
	nix.settings.experimental-features = [ "nix-command" "flakes" ];
	}
```

`nvidia.nix`
```nix
	{
	# Load Nvidia driver for Xorg and Wayland
	services.xserver.videoDrivers = ["nvidia"];

	hardware.nvidia = {
		
		# Modesetting is required.
		modesetting.enable = true;

		powerManagement.enable = false;

		powerManagement.finegrained = false;

		open = false;

		nvidiaSettings = true;

		package = config.boot.kernelPackages.nvidiaPackages.stable;
	
	};

	hardware.nvidia.prime = {
		# offload = {
		#   enable = true;
		#   enableOffloadCmd = true;
		# }

		sync.enable = true;

		intelBusId = "PCI:0:2:0";
		nvidiaBusId = "PCI:1:0:0";

	};
	}
```

`timezone.nix`
```nix
	{
		time.timeZone = "Africa/Cairo";
	}
```

`user.nix`
```nix
	{ pkgs, ... }: {
	users = {
		users.ywyh = {
		isNormalUser = true;
		extraGroups = [ "wheel" "networkmanager" ];
		};
	};
	}
```

```bash
```