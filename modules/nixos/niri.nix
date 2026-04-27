{
  config,
  pkgs,
  inputs,
  ...
}: {
  programs.niri.enable = true;
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${config.programs.niri.package}/bin/niri-session";
        user = "teliang";
      };
    };
  };

  security.polkit.enable = true; # polkit
  services.gnome.gnome-keyring.enable = true; # secret service
  security.pam.services.swaylock = {};

  programs.waybar.enable = true; # top bar
  environment.systemPackages = with pkgs; [alacritty fuzzel swaylock mako swayidle];
}
