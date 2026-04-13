{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    mplus-outline-fonts.githubRelease
    dina-font
    proggyfonts
    home-manager
    iperf
    android-tools

    firefox
    joplin-desktop
    vscode
    google-chrome
    dbeaver-bin
    anki-bin
    android-studio
    mpv
    calibre
    discord
    gimp
    obs-studio
    remmina
    qbittorrent
    libreoffice
    vlc
    arduino
    alacritty

    jdk
    nodejs
    go
    rustc
    cargo
    php
    python315
    python314
    python312
    python311
    python310
    ccls
    strace
    gsl
    boost

    maven
    gradle

    scrcpy
    freerdp
    neovim
    git
    qemu
    quickemu
    wget
    curl

    nload
    htop
    btop
    tree
    yadm
  ];
  programs.java.enable = true;

  programs.tmux = {
    enable = true;
    clock24 = true;
    extraConfig = '' # used for less common options, intelligently combines if defined in multiple places.
    '';
  };

  virtualisation.docker = {
    enable = true;
  };
}
