{ config, pkgs, ... }:

# NixOS unstable stuff
let
  unstable = import <nixos-unstable> { config = { allowUnFree = true; }; };
in {
  environment.systemPackages = [
    unstable.devenv
    unstable.uv
  ];
}

