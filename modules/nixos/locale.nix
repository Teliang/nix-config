{ pkgs, ... }:
{
  
  # Set your time zone.
  time.timeZone = "Asia/Tokyo";

  # Select internationalisation properties.
  i18n = {
  defaultLocale = "en_US.UTF-8";

  supportedLocales = [
    "ja_JP.UTF-8/UTF-8"
    "en_US.UTF-8/UTF-8"
  ];

  extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };
  inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-mozc-ut
      fcitx5-gtk
      librime
      # TODO
      rime-zhwiki
      (fcitx5-rime.override {
          rimeDataPkgs = [
            rime-ice
          ];
        })
    ];
  };
  };


  # Configure console keymap
  console.keyMap = "jp106";

  # Configure X11 keyboard layout (used by SDDM and Wayland)
  services.xserver.xkb = {
    layout = "jp";
    variant = "OADG109A";
  };
}
