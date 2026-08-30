{ pkgs, ... }:
{
  environment.variables.EDITOR = "nvim";

  # slack
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  networking.firewall.enable = false;

  environment.systemPackages = with pkgs; [
    home-manager
    iperf
    dnsutils
    mailutils
    exiftool
    nixfmt
    fastfetch
    netcat
    inetutils
    lsof
    linuxKernel.kernels.linux_zen
    git
    wget
    curl
    nload
    htop
    btop
    iotop
    tree
    yadm
    smartmontools
    python315
  ];

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

  # GPL-2.0-with-classpath-exception (OpenJDK)
  programs.java = {
    enable = true;
    package = pkgs.openjdk25;
  };


  virtualisation.docker = {
    enable = true;
  };
}
