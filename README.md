# nix-config

https://github.com/Misterio77/nix-starter-configs

## git submodule
```
git clone --recurse-submodules
git submodule update --remote --merge --recursive
```

## update
```
nix flake update

sudo nixos-rebuild switch --flake .#xiaoxin-pro-14-2022
sudo nixos-rebuild switch --flake .#n4100

home-manager switch --flake .?submodules=1#teliang@xiaoxin-pro-14-2022
home-manager switch --flake .?submodules=1#teliang@n4100
```

## useful command
```
nix-shell -p git

sudo nix-collect-garbage -d

nix fmt .
```

## ssh
```
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub
chmod 600 ~/.ssh/authorized_keys
```
