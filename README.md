# Bootstrap Nix

- Make sure to install [Nix](https://nixos.org/download/) if you're not on NixOS:


and enable experimental features by adding the following line to 
/etc/nix/nix.conf

```bash
experimental-features = nix-command flakes
```

## run the following commands to clone this repo and initialize it
```bash
nix run nixpkgs#gh -- auth login
nix run nixpkgs#gh -- repo clone cyb3rkun/nix ~/nix
nix run home-manager --switch --flake ~/nix#cyb3rkun
```

## or since this is a public repo:

```bash
nix run home-manager -- switch \
    --flake github:cyb3rkun/nix#cyb3r
```
