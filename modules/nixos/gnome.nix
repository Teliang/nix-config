{pkgs, ...}: {
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.displayManager.gdm.enable = true;
  services.displayManager.gdm.autoSuspend = false;
  services.desktopManager.gnome.enable = true;
  environment.systemPackages = with pkgs; [
    gnomeExtensions.gsconnect
    gnomeExtensions.appindicator
    # gnomeExtensions.bing-wallpaper
    gnomeExtensions.pano
    gnomeExtensions.dash-to-panel
    gnomeExtensions.immich-wallpaper
    gnomeExtensions.resource-monitor
    gnome-tweaks
    dconf-editor
  ];
}
