{ pkgs, ... }: {
  services.xrdp.enable = true;
  services.xrdp.defaultWindowManager = "${pkgs.gnome-session}/bin/gnome-session"; # gnome wayland session
  services.gnome.gnome-remote-desktop.enable = true; # needs gnome-remote-desktop backend to work!!
  services.displayManager.autoLogin.enable = false;
  systemd.services.gnome-remote-desktop = {
    wantedBy = [ "graphical.target" ]; # for starting the unit automatically at boot
  };
  services.getty.autologinUser = null;
}
