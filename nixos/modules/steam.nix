{ config, pkgs, ... }:
{
  # Enable Steam
  programs.steam = {
    enable = true;
    # Enable games with proprietary licenses
    gamescopeSession.enable = true;
  };

  # Install necessary packages
  environment.systemPackages = with pkgs; [
    steam
    steam-run
  ];
}