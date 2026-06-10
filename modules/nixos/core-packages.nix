{ pkgs, ... }:
{
  environment.variables.EDITOR = "nvim";

  networking.firewall.enable = false;

  environment.systemPackages = with pkgs; [

    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    dina-font
    proggyfonts
    home-manager
    nixfmt

    # graphical app
    joplin-desktop
    vscode
    dbeaver-bin
    anki-bin
    android-studio
    mpv
    mpvScripts.autosub
    calibre
    discord
    gimp
    obs-studio
    remmina
    qbittorrent
    libreoffice
    vlc
    arduino-ide
    wechat-uos

    # developer tool
    nixd
    gcc
    bear
    clang-tools
    gnumake
    cmake
    pkg-config
    zlib
    nodejs
    go
    rustc
    rust-analyzer
    cargo
    php
    python315
    python314
    ccls
    strace
    gsl
    boost
    bash-language-server
    clang
    cmake-language-server
    efm-langserver
    ncurses
    libffi
    android-tools
    web-ext
    automake
    autoconf

    maven
    gradle

    # monitor
    nload
    htop
    btop
    iotop
    tree
    yadm
    smartmontools
    iperf
    dnsutils
    mailutils
    exiftool

    fastfetch
    netcat
    tcpdump
    inetutils
    nmap
    lsof
    ldns
    parted
    mosh
    mitmproxy

    unixbench

    # terminal app

    chntpw
    woeusb

    eza
    scrcpy
    freerdp
    git
    qemu
    quickemu
    wget
    curl
  ];

  programs.java = {
    enable = true;
    package = pkgs.jdk25;
  };

  programs.nix-ld.enable = true;

  # mail
  programs.thunderbird.enable = true;
  programs.msmtp.enable = true;

  networking.networkmanager.enable = true;

  services.resolved = {
    enable = true;
    settings.Resolve.DNSOverTLS = "opportunistic"; # for vpn
  };

  security.sudo.wheelNeedsPassword = false;

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };

  programs.tmux = {
    enable = true;
    clock24 = true;
  };

  virtualisation.docker = {
    # enable = true;
  };
}
