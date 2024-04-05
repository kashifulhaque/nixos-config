{ config, pkgs, ... }:

{
  environment.gnome.excludePackages = (with pkgs; [
      gnome-photos
      gnome-tour
  ]) ++ (with pkgs.gnome; [
    cheese # webcam tool
    gnome-music
    gnome-terminal
    gedit # text editor
    epiphany # web browser
    geary # email reader
    evince # document viewer
    gnome-characters
    totem # video player
  ]);
}
