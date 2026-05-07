{
  config,
  pkgs,
  inputs,
  ...
}:
{
  systemd.services.lanmai = {
    description = "Lanmai";
    enable = true;

    wants = [ "systemd-udev-settle.service" ];
    after = [ "systemd-udev-settle.service" ];

    wantedBy = [ "multi-user.target" ];

    serviceConfig = {
      ExecStartPre = "${pkgs.coreutils}/bin/sleep 1";
      ExecStart = "/usr/local/bin/lanmai";
    };
  };
}
