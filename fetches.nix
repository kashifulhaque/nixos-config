{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    nitch
    cpufetch
    neofetch
    freshfetch
  ];
}
