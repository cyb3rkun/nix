# to bootstrap nix

```sh
nix run nixpkgs#gh -- auth login
nix run nixpkgs#gh --repo clone cyb3rkun/nix-home-manager ~/.config/home-manager/
cd ~/.config/home-manager
nix run home-manager --switch --flake .#cyb3rkun
```

or since this is a public repo:

```sh
nix run home-manager -- switch \
    --flake github:cyb3rkun/nix-home-manager#home-manager
```
