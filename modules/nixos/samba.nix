{
  config,
  pkgs,
  callPackage,
  ...
}:
{
  # For mount.cifs, required unless domain name resolution is not needed.
  environment.systemPackages = [ pkgs.cifs-utils ];
  fileSystems."/home/teliang/samba" = {
    device = "//192.168.2.2/data";
    fsType = "cifs";
    options =
      let
        # this line prevents hanging on network split
        automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";

      in
      [ "${automount_opts},credentials=/etc/nixos/smb-secrets,iocharset=utf8,uid=1000,gid=1000" ];
  };
}
