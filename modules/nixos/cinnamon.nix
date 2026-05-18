{
  config,
  pkgs,
  callPackage,
  ...
}:
{
  services.xserver.desktopManager.cinnamon.enable = true;
  services.xserver.displayManager.lightdm.enable = true;
}
