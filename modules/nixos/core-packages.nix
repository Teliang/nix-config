{ pkgs, ... }:
{
  environment.variables.EDITOR = "nvim";

  # slack
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  networking.firewall.enable = false;

  environment.systemPackages = with pkgs; [
    smartmontools

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
    web-ext
    dnsutils
    mailutils
    # evolution
    exiftool
    nixfmt
    slack
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
    yt-dlp
    automake
    autoconf

    nfs-utils
    linuxKernel.kernels.linux_zen
    unixbench

    chntpw
    woeusb

    libffi
    pkg-config
    # python313Packages.autopep8

    wpsoffice
    firefox
    tor-browser
    joplin-desktop
    vscode
    google-chrome
    dbeaver-bin
    anki-bin
    android-studio
    mpv
    mpvScripts.autosub
    eza
    calibre
    discord
    gimp
    obs-studio
    remmina
    qbittorrent
    libreoffice
    vlc
    arduino-ide
    alacritty
    wechat-uos

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

    maven
    gradle

    scrcpy
    freerdp
    git
    qemu
    quickemu
    wget
    curl

    nload
    htop
    btop
    iotop
    tree
    yadm
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
  services.resolved.enable = true;

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
