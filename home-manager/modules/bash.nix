{ config, pkgs, ... }: {
  programs.bash = {
    enable = true;

    initExtra = ''
      # Start UWSM
      if uwsm check may-start && uwsm select; then
          exec systemd-cat -t uwsm_start uwsm start default
      fi
    '';
  };
}