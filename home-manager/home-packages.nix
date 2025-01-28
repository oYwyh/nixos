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
        mako
        pavucontrol
	    brave
        anki
        vesktop
        nautilus
        flameshot
        qimgv
        papirus-icon-theme
        thunderbird
        swww

        hyprpolkitagent
        hyprpicker
        hypridle
        hyprsunset
        hypridle
        hyprpaper
        hyprshot
        cliphist
        wl-clipboard
        
        home-manager

        nodejs
        pnpm
    ];
}
