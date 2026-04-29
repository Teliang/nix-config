# nix-config

https://github.com/Misterio77/nix-starter-configs

## update
```
nix flake update

sudo nixos-rebuild switch --flake .#xiaoxin-pro-14-2022
sudo nixos-rebuild switch --flake .#thinkpad-t14s-gen3

home-manager switch --flake .#teliang@xiaoxin-pro-14-2022
home-manager switch --flake .#teliang@thinkpad-t14s-gen3
```

## useful command
```
nix-shell -p git

sudo nix-collect-garbage -d

nix fmt .
```

## ssh
```
chmod 600 ~/.ssh/id_rsa
```
