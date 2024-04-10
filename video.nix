{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    olive-editor
  ];
}
