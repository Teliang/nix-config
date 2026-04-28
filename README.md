# nix-config

https://github.com/Misterio77/nix-starter-configs

```
export NIX_CONFIG="experimental-features = nix-command flakes"

sudo nixos-rebuild switch --flake .#xiaoxin-pro-14-2022

nix shell nixpkgs#home-manager

home-manager switch --flake .#teliang@xiaoxin-pro-14-2022

nix flake update
```


```
nix-shell -p git

sudo nix-collect-garbage -d

nix fmt .
```

## dirty config
touch ~/.local/share/fcitx5/rime/default.custom.yaml

```
patch:
  __include: rime_ice_suggestion:/

  schema_list:
    - schema: rime_ice
```
