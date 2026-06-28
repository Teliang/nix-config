# Add your reusable NixOS modules to this directory, on their own file (https://nixos.wiki/wiki/Module).
# These should be stuff you would like to share with others, not your personal configurations.
{
  # List your module files here
  # my-module = import ./my-module.nix;
  core-packages = import ./core-packages.nix;
  gnome = import ./gnome.nix;
  kde = import ./kde.nix;
  cosmic = import ./cosmic.nix;
  cinnamon = import ./cinnamon.nix;
  xfce = import ./xfce.nix;

  firefox = import ./firefox.nix;
  firefox-overrides = import ./firefox-overrides.nix;
  chromium = import ./chromium.nix;
  chromium-overrides = import ./chromium-overrides.nix;
  wireguard = import ./wireguard.nix;
  locale = import ./locale.nix;
  input-method = import ./input-method.nix;
  niri = import ./niri.nix;
  lanmai = import ./lanmai.nix;
  samba = import ./samba.nix;

  server-packager = import ./server-packager.nix;
  k3s = import ./k3s.nix;
}
