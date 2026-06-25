# This is your system's configuration file.
# Use this to configure your system environment (it replaces /etc/nixos/configuration.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:
{
  # You can import other NixOS modules here
  imports = [
    # If you want to use modules your own flake exports (from modules/nixos):
    # inputs.self.nixosModules.example
    inputs.self.nixosModules.core-packages
    # inputs.self.nixosModules.niri
    inputs.self.nixosModules.gnome
    inputs.self.nixosModules.locale
    inputs.self.nixosModules.input-method
    inputs.self.nixosModules.firefox
    inputs.self.nixosModules.chromium
    inputs.self.nixosModules.lanmai
    inputs.self.nixosModules.samba

    # Or modules from other flakes (such as nixos-hardware):
    inputs.nixos-hardware.nixosModules.common-cpu-amd
    inputs.nixos-hardware.nixosModules.common-cpu-amd-pstate
    inputs.nixos-hardware.nixosModules.common-cpu-amd-zenpower
    inputs.nixos-hardware.nixosModules.common-pc-ssd
    inputs.nixos-hardware.nixosModules.common-pc-laptop

    # You can also split up your configuration and import pieces of it here:
    ../common-configuration.nix

    # Import your generated (nixos-generate-config) hardware configuration
    ./hardware-configuration.nix
  ];

  networking.hostName = "xiaoxin-pro-14-2022";

}
