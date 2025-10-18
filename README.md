# Bootstrap Nix

## 1. Install Nix
If you're not on NixOS install [Nix](https://nixos.org/download/)

Then enable experimental features by adding this line to */etc/nix/nix.conf*

```bash
experimental-features = nix-command flakes
```

## 2. (Optionally) Clone this repo

## 3. Activate Home Manager
If you cloned it locally:
```
nix run home-manager -- switch --flake ~/nix#cyb3rkun
```

Or directly from GitHub (no clone needed):

```bash
nix run home-manager -- switch --flake github:cyb3rkun/nix#cyb3r
```

# Notes
- The flake URI format is <sourceDir>#<homeManagerUser>

- You can use any directory instead of nix as long as you point to that 
  directory in <souceDir> when using the switch command

- If this is your first time usin Home Manager outside NixOS, you might need to 
  activate the user environment first:
  ```bash
  nix run home-manager -- init --switch
  ```

