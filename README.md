# bootstrap nix

- make sure to install [Nix](https://nixos.org/download/) if you're not on nixos:


and enable experimental features by adding the following line to 

```ssh
# /etc/nix/nix.conf

experimental-features = nix-command flakes
```

## run the following commands to clone this repo and initialize it
```sh
nix run nixpkgs#gh -- auth login
nix run nixpkgs#gh -- repo clone cyb3rkun/nix ~/nix
nix run home-manager --switch --flake ~/nix#cyb3rkun
```

## or since this is a public repo:

```sh
nix run home-manager -- switch \
    --flake github:cyb3rkun/nix#cyb3r
```
