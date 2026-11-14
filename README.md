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

# .local/share/fcitx5/rime/rime_ice.schema.yaml
  - name: traditionalization
    states: [简,繁]
    reset: 1
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


## Install in mac-mini-2018
```
parted /dev/nvme0n1 -- mklabel gpt && \
parted /dev/nvme0n1 -- mkpart root xfs 512MB -8GB && \
parted /dev/nvme0n1 -- mkpart swap linux-swap -8GB 100% && \
parted /dev/nvme0n1 -- mkpart ESP fat32 1MB 512MB && \
parted /dev/nvme0n1 -- set 3 esp on && \
mkfs.xfs -f -L nixos /dev/nvme0n1p1 && \
mkswap -L swap /dev/nvme0n1p2  && \
mkfs.fat -F 32 -n boot /dev/nvme0n1p3 && \
mount /dev/disk/by-label/nixos /mnt && \
mount --mkdir -o umask=077 /dev/disk/by-label/boot /mnt/boot && \
swapon /dev/disk/by-label/swap


nixos-generate-config --root /mnt

cd /mnt/etc/nixos

git clone https://github.com/teliang/nix-config

cd nix-config

# cp ../hardware-configuration.nix nixos/DOTO***

nixos-install --flake .#mac-mini-2018
```
