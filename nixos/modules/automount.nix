{ pkgs, ... }:

{
  services.gvfs.enable = true;
  services.udisks2.enable = true;

  environment.systemPackages = with pkgs; [ 
    udiskie
    ntfs3g
  ];
}