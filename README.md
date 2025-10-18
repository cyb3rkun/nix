# to bootstrap nix

- make sure to install nix if you're not on nixos:
    [NixOS](https://nixos.org/download/)

and enable experimental features by adding the following line to 

```ssh
/etc/nix/nix.conf

experimental-features = nix-command flakes



```
```sh
nix run nixpkgs#gh -- auth login
nix run nixpkgs#gh -- repo clone cyb3rkun/nix ~/nix
nix run home-manager --switch --flake ~/nix#cyb3rkun
```

or since this is a public repo:

```sh
nix run home-manager -- switch \
    --flake github:cyb3rkun/nix#cyb3r
```
