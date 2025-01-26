{ pkgs, ... }: {
    fonts = {
        enableDefaultPackages = true;

        packages = with pkgs; [
            noto-fonts-cjk-sans
            noto-fonts-cjk-serif
            source-han-sans
            source-han-serif
        ];
    };
}