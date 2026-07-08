{ pkgs, ... }: {
  i18n = {
    inputMethod = {
      enable = true;
      # LGPL
      type = "fcitx5";
      fcitx5.addons = with pkgs; [
        fcitx5-mozc-ut
        fcitx5-gtk
        # BSD-3-Clause license
        librime
        rime-zhwiki
        (fcitx5-rime.override {
          rimeDataPkgs = [
            rime-ice
          ];
        })
      ];
    };
  };

  # Configure X11 keyboard layout (used by SDDM and Wayland)
  services.xserver.xkb = {
    layout = "jp";
    variant = "OADG109A";
  };
}
