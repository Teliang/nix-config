{ pkgs, ... }:
{
  environment.variables.EDITOR = "nvim";

  networking.firewall.enable = false;

  environment.systemPackages = with pkgs; [

    # --- Fonts ---
    # OFL (Open Font License)
    noto-fonts
    # OFL
    noto-fonts-cjk-sans
    # OFL
    noto-fonts-color-emoji
    # OFL
    liberation_ttf
    # OFL
    fira-code
    # OFL
    fira-code-symbols
    # MIT
    dina-font
    # MIT
    proggyfonts
    # MIT
    home-manager
    # Apache-2.0
    nixfmt

    # --- Graphical Apps ---
    # GPL-3.0-or-later
    goldendict-ng
    # AGPL-3.0
    joplin-desktop
    # MIT
    vscodium
    # Apache-2.0 / Proprietary (Commercial extensions available, binary is free-to-use)
    dbeaver-bin
    # AGPL-3.0-or-later
    anki-bin
    # Proprietary (Google Android Studio License)
    android-studio
    # GPL-2.0-or-later / LGPL-2.1-or-later
    mpv
    # MIT
    mpvScripts.autosub
    # GPL-3.0
    calibre
    # Proprietary
    discord
    # GPL-3.0-or-later
    gimp
    # GPL-2.0-or-later
    obs-studio
    # GPL-2.0-or-later
    remmina
    # GPL-2.0-or-later
    qbittorrent
    # MPL-2.0
    libreoffice
    # GPL-2.0-or-later / LGPL-2.1-or-later
    vlc
    # AGPL-3.0
    arduino-ide
    # Proprietary
    wechat-uos

    # GPL-2.0 license
    kdiff3

    # --- Developer Tools ---
    # LGPL-2.1-or-later
    nixd
    # GPL-3.0-or-later
    gcc
    # GPL-3.0-or-later
    bear
    # Apache-2.0 with LLVM Exceptions
    clang-tools
    # GPL-3.0-or-later
    gnumake
    # BSD-3-Clause
    cmake
    # GPL-2.0-or-later
    pkg-config
    # Zlib
    zlib
    # MIT
    nodejs
    # BSD-3-Clause
    go
    # Apache-2.0 or MIT
    rustc
    # Apache-2.0 or MIT
    rust-analyzer
    # Apache-2.0 or MIT
    cargo
    # PHP-3.01
    php
    # PSF (Python Software Foundation License)
    python315
    # PSF
    python314
    # Apache-2.0
    ccls
    # LGPL-2.1-or-later
    strace
    # GPL-3.0-or-later
    gsl
    # BSL-1.0 (Boost Software License)
    boost
    # MIT
    bash-language-server
    # Apache-2.0 with LLVM Exceptions
    clang
    # MIT
    cmake-language-server
    # MIT
    efm-langserver
    # MIT / X11
    ncurses
    # MIT
    libffi
    # Apache-2.0
    android-tools
    # MPL-2.0
    web-ext
    # GPL-2.0-or-later
    automake
    # GPL-3.0-or-later
    autoconf

    # Apache-2.0
    maven
    # Apache-2.0
    gradle

    # GPL-2.0
    aria2

    # --- System Monitors & Network Utilities ---
    # GPL-2.0-or-later
    nload
    # GPL-2.0-or-later
    htop
    # Apache-2.0
    btop
    # GPL-2.0-or-later
    iotop
    # GPL-2.0-or-later
    tree
    # GPL-3.0-or-later
    yadm
    # GPL-2.0-or-later
    smartmontools
    # BSD-3-Clause
    iperf
    # ISC (bind9 components)
    dnsutils
    # GPL-3.0-or-later
    mailutils
    # Artistic License / GPL-1.0-or-later
    exiftool

    # MIT
    fastfetch
    # BSD-3-Clause / GPL-2.0-or-later (depends on variant, usually BSD)
    netcat
    # BSD-3-Clause
    tcpdump
    # GPL-3.0-or-later
    inetutils
    # Nmap Public Source License (NPSL)
    nmap
    # BSD-like (Lsof License)
    lsof
    # BSD-3-Clause
    ldns
    # GPL-3.0-or-later
    parted
    # GPL-3.0-or-later
    mosh
    # MIT
    mitmproxy

    # GPL-2.0-or-later
    unixbench

    # --- Terminal Apps & CLI Utilities ---
    # GPL-2.0-or-later (Commercial licenses exist)
    bento4
    # Unlicense (Public Domain)
    yt-dlp

    # GPL-2.0
    chntpw
    # GPL-3.0-or-later
    woeusb

    # MIT
    eza
    # Apache-2.0
    scrcpy
    # Apache-2.0
    freerdp
    # GPL-2.0-only
    git
    # GPL-2.0-only / LGPL-2.1-or-later
    qemu
    # MIT
    quickemu
    # GPL-3.0-or-later
    wget
    # curl License (MIT/X derivative)
    curl
  ];

  # GPL-2.0-with-classpath-exception (OpenJDK)
  programs.java = {
    enable = true;
    package = pkgs.jdk25;
  };

  # MIT (NixOS helper script)
  programs.nix-ld.enable = true;

  # --- Mail ---
  # MPL-2.0
  programs.thunderbird.enable = true;
  # GPL-3.0-or-later
  programs.msmtp.enable = true;

  # GPL-2.0-or-later
  networking.networkmanager.enable = true;

  # Component of Systemd (LGPL-2.1-or-later)
  services.resolved = {
    enable = true;
    settings.Resolve.DNSOverTLS = "opportunistic"; # for vpn
  };

  security.sudo.wheelNeedsPassword = false;

  # Apache-2.0 / Vim License
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };

  # BSD-3-Clause
  programs.tmux = {
    enable = true;
    clock24 = true;
  };

  # Apache-2.0
  virtualisation.docker = {
    # enable = true;
  };
}
