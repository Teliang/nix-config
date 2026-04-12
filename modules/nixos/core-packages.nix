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
    dconf-editor

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
    tmux

    gnomeExtensions.gsconnect
    gnomeExtensions.appindicator
    gnomeExtensions.bing-wallpaper
  ];
  programs.java.enable = true;

  virtualisation.docker = {
    enable = true;
  };
}
