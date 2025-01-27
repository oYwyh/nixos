{
  wayland.windowManager.hyprland.settings = {
    bind = [
        "$mainMod, Q, exec, $terminal"
        "$mainMod, C, killactive,"
        "$mainMod, M, exit,"
        "$mainMod, E, exec, $fileManager"
        "$mainMod, R, exec, $menu"
        "$mainMod, P, pseudo," # dwindle
        "$mainMod, J, togglesplit," # dwindle
        "$mainMod, T, togglefloating,"
        "$mainMod, F, fullscreen"
        "$mainMod SHIFT, F, fullscreen,1"

        "$mainMod CTRL, C, exec, hyprpicker -a"
        "SUPER, V, exec, cliphist list | rofi -dmenu | cliphist decode | wl-copy"


        # Screenshot a window
        "$mainMod, PRINT, exec, hyprshot -m window --clipboard-only"
        # Screenshot a monitor
        ", PRINT, exec, hyprshot -m output --clipboard-only"
        # Screenshot a region
        "$mainMod SHIFT, PRINT, exec, hyprshot -m region --clipboard-only"


        # Brightness
        ",f3,exec, bash /etc/nixos/home-manager/modules/hypr/scripts/brightness/up.sh"
        # ",f2,exec, bash /etc/nixos/home-manager/modules/hypr/scripts/brightness/down.sh"


        # Volume
        ", f8, exec, bash /etc/nixos/home-manager/modules/hypr/scripts/volume/up.sh"
        ", f7, exec, bash /etc/nixos/home-manager/modules/hypr/scripts/volume/down.sh"
        ", f6, exec, bash /etc/nixos/home-manager/modules/hypr/scripts/volume/mute.sh"

        # Date
        "$mainMod, D, exec, bash /etc/nixos/home-manager/modules/hypr/scripts/date.sh"

        # Move focus with mainMod + arrow keys
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        # Switch workspaces with mainMod + [0-9]
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"

        # Move active window to a workspace with mainMod + SHIFT + [0-9]
        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"

        # Example special workspace (scratchpad)
        "$mainMod, S, togglespecialworkspace, magic"
        "$mainMod SHIFT, S, movetoworkspace, special:magic"

        # Scroll through existing workspaces with mainMod + scroll
        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"
    ];

    bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
    ];

    bindl = [
        ", XF86AudioNext, exec, playerctl next"
        ", XF86AudioPause, exec, playerctl play-pause"
        ", XF86AudioPlay, exec, playerctl play-pause"
        ", XF86AudioPrev, exec, playerctl previous"
    ];
  };
}