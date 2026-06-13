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
    inputs.self.nixosModules.locale
    inputs.self.nixosModules.server-packager
    # inputs.self.nixosModules.k3s

    # Or modules from other flakes (such as nixos-hardware):
    # inputs.nixos-hardware.nixosModules.common-cpu-intel
    # inputs.nixos-hardware.nixosModules.common-pc-ssd
    # inputs.nixos-hardware.nixosModules.common-pc-laptop

    # You can also split up your configuration and import pieces of it here:
    ../common-configuration.nix

    # Import your generated (nixos-generate-config) hardware configuration
    ./hardware-configuration.nix
  ];

  networking.hostName = "qemu";

}
