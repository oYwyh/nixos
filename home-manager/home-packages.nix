{ pkgs, ... }: {
    nixpkgs.config.allowUnfree = true;

    home.packages = with pkgs; [
        kitty
        lshw
        firefox
        vscode
        brightnessctl
        rofi-wayland
        rofi-screenshot
        dunst
        pavucontrol
	    brave
        anki
        vesktop
        nautilus
        flameshot
        qimgv
        papirus-icon-theme
        thunderbird

        hyprpolkitagent
        hyprpicker
        hypridle
        hyprsunset
        hypridle
        hyprpaper
        hyprshot
        cliphist
        
        home-manager

        nodejs
        pnpm
    ];
}
