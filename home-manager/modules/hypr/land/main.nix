{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = false;

    settings = {
        monitor = ",1920x1080@60,auto,1";

        "$mainMod" = "SUPER";
        "$terminal" = "kitty";
        "$backupFileManager" = "nautilus";
        "$fileManager" = "dolphin";
        "$menu" = "rofi -show drun -theme Monokai -icon-theme 'Papirus' -show-icons";

        env = [
            "XCURSOR_SIZE,24"
            "HYPRCURSOR_SIZE,24"
            "NIXOS_OZONE_WL=1"
            "LIBVA_DRIVER_NAME,nvidia"
            "__GLX_VENDOR_LIBRARY_NAME,nvidia"
        ];

        exec-once = [
            "udiskie"
            "swww-daemon"
            "hypridle"
            "systemctl --user start hyprpolkitagent"
            "wl-paste --type text --watch cliphist store" # Stores only text data
            "wl-paste --type image --watch cliphist store" # Stores only image data
        ];
        
        general = {
            gaps_in = 5;
            gaps_out = 5;

            border_size = 2;

            "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
            "col.inactive_border" = "rgba(595959aa)";

            resize_on_border = false;

            allow_tearing = false;

            layout = "dwindle";
        };

        decoration = {
            rounding = 10;

            active_opacity = "1.0";
            inactive_opacity = "1.0";

            shadow = {
                enabled = true;
                range = 4;
                render_power = 3;
                color = "rgba(1a1a1aee)";
            };

            blur = {
                enabled = true;
                size = 3;
                passes = 1;
                vibrancy = "0.1696";
            };
        };

        animations = {
            enabled = true;

            bezier = [
                "easeOutQuint,0.23,1,0.32,1"
                "easeInOutCubic,0.65,0.05,0.36,1"
                "linear,0,0,1,1"
                "almostLinear,0.5,0.5,0.75,1.0"
                "quick,0.15,0,0.1,1"
            ];

            animation = [
                "global, 1, 10, default"
                "border, 1, 5.39, easeOutQuint"
                "windows, 1, 4.79, easeOutQuint"
                "windowsIn, 1, 4.1, easeOutQuint, popin 87%"
                "windowsOut, 1, 1.49, linear, popin 87%"
                "fadeIn, 1, 1.73, almostLinear"
                "fadeOut, 1, 1.46, almostLinear"
                "fade, 1, 3.03, quick"
                "layers, 1, 3.81, easeOutQuint"
                "layersIn, 1, 4, easeOutQuint, fade"
                "layersOut, 1, 1.5, linear, fade"
                "fadeLayersIn, 1, 1.79, almostLinear"
                "fadeLayersOut, 1, 1.39, almostLinear"
                "workspaces, 1, 1.94, almostLinear, fade"
                "workspacesIn, 1, 1.21, almostLinear, fade"
                "workspacesOut, 1, 1.94, almostLinear, fade"
            ];
        };

        dwindle = {
            pseudotile = true;
            preserve_split = true;
        };

        master = {
            new_status = "master";
        };

        misc = {
            force_default_wallpaper = -1; # Set to 0 or 1 to disable the anime mascot wallpapers
            disable_hyprland_logo = false; # If true disables the random hyprland logo / anime girl background. :(
        };

        input = {
            kb_layout = "us";

            # kb_variant =
            # kb_model =
            # kb_options =
            # kb_rules =

            follow_mouse = 1;

            sensitivity = 0; # -1.0 - 1.0, 0 means no modification.

            touchpad = {
                natural_scroll = false;
            };
        };

        gestures = {
            workspace_swipe = false;
        };

        device = {
            name = "epic-mouse-v1";
            sensitivity = -0.5;
        };

        
        windowrulev2 = [
            "suppressevent maximize, class:.*"
            "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
        ];
    };
  };
}
