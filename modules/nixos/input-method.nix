{pkgs, ...}: {
  i18n = {
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

  # Configure X11 keyboard layout (used by SDDM and Wayland)
  services.xserver.xkb = {
    layout = "jp";
    variant = "OADG109A";
  };
}
