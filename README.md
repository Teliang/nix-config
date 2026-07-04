# nix-config

https://github.com/Misterio77/nix-starter-configs

## git submodule
```
git submodule update --init --recursive
git submodule update --remote --merge --recursive
```

## update
```
nix flake update

sudo nixos-rebuild switch --flake .#n4100

home-manager switch --flake .?submodules=1#teliang@n4100
```

## useful command
```
man configuration.nix

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
