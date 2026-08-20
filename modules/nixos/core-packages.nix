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
    # AGPL-3.0-only
    rustdesk
    # GPL-3.0-or-later
    goldendict-ng
    # AGPL-3.0
    joplin-desktop
    # MIT
    (vscode-with-extensions.override {
      # vscode = vscodium;
      vscodeExtensions =
        with vscode-extensions;
        [
          # java
          vscjava.vscode-java-pack
          redhat.java
          vscjava.vscode-maven
          vscjava.vscode-gradle
          vscjava.vscode-java-test
          vscjava.vscode-java-debug
          vscjava.vscode-java-dependency
          vscjava.vscode-spring-initializr
          # python
          ms-python.python
          ms-python.debugpy
          ms-python.pylint
          ms-python.vscode-pylance

          rust-lang.rust-analyzer

          # frontend
          ecmel.vscode-html-css
          dbaeumer.vscode-eslint

          bbenoist.nix
          ms-azuretools.vscode-docker
          ms-vscode-remote.remote-ssh
        ]
        ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
          {
            name = "remote-ssh-edit";
            publisher = "ms-vscode-remote";
            version = "0.47.2";
            sha256 = "1hp6gjh4xp2m1xlm1jsdzxw9d8frkiidhph6nvl24d0h8z34w49g";
          }
        ];
    })

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
    # Proprietary
    wpsoffice
    # GPL-2.0-or-later / LGPL-2.1-or-later
    vlc
    # AGPL-3.0
    arduino-ide
    # Proprietary
    wechat-uos
    # Proprietary
    steam
    # Proprietary
    obsidian
    # Proprietary
    # TODO
    # moneydance
    # Mozilla Public License 2.0
    brave

    # GPL-2.0 license
    kdiff3

    # GPL-3.0 license
    flameshot

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
    # mitmproxy

    # GPL-2.0-or-later
    unixbench
    # unfree
    geekbench

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
    package = pkgs.openjdk25;
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
