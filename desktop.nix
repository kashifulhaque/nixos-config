{ config, pkgs, ... }:

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # Enable the Gnome Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  environment.systemPackages = with pkgs; [
    # Gnome apps
    gnome.gnome-tweaks

    # Gnome extensions
    gnomeExtensions.appindicator
  ];

  services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];
}
