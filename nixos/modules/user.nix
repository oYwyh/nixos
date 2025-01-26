{ pkgs, ... }: {
  users = {
    users.ywyh = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" "docker" ];
    };
  };
}