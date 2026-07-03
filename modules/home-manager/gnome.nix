{
  lib,
  pkgs,
  ...
}:
{
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      enable-hot-corners = false;
      gtk-enable-primary-paste = true;
    };
    "org/gnome/shell/app-switcher" = {
      current-workspace-only = true;
    };
    "org/gnome/desktop/break-reminders" = {
      selected-breaks = [
        "eyesight"
        "movement"
      ];
    };
    "org/gnome/desktop/interface" = {
      clock-show-weekday = true;
    };
    "org/gnome/desktop/wm/preferences" = {
      button-layout = "appmenu:minimize,maximize,close";
    };
    "org/gnome/shell" = {
      disable-user-extensions = false;
    };
    "org/gnome/desktop/screensaver" = {
      lock-enabled = false;
    };
    "org/gnome/desktop/notifications" = {
      show-banners = false;
    };
  };
}
