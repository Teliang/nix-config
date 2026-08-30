{
  config,
  pkgs,
  inputs,
  ...
}: {
systemd.services.mask-acpi-gpe0F = {
  description = "Mask ACPI interrupt gpe0F";
  wantedBy = [ "multi-user.target" ];
  after = [ "sysinit.target" ];
  serviceConfig = {
    Type = "oneshot";
    RemainAfterExit = true;
    ExecStart = "${pkgs.bash}/bin/bash -c 'echo mask > /sys/firmware/acpi/interrupts/gpe0F'";
  };
};
}
