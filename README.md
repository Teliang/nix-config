# nix-config

https://github.com/Misterio77/nix-starter-configs

## git submodule
```
git clone --recurse-submodules

git submodule update --init --recursive
git submodule update --remote --merge --recursive
```

## install
```
# use tsinghua mirror
nixos-install --flake .#xiaoxin-pro-14-2022 --option substituters "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
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

## dirty configuration

### samba
```
# /etc/nixos/smb-secrets
username=<USERNAME>
password=<PASSWORD>
```

### input
```
curl -fsSL https://raw.githubusercontent.com/rime/plum/master/rime-install | rime_dir="$HOME/.local/share/fcitx5/rime"  bash -s -- iDvel/rime-ice
```

### vim plugin
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### ssh
```
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub
chmod 600 ~/.ssh/authorized_keys
```
