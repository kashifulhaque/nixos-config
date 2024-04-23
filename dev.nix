{ config, pkgs, ... }:

{
  # Enable docker
  virtualisation.docker.enable = true;

  # Enable tmux
  programs.tmux = {
    enable = true;
    clock24 = true;
  };

  environment.systemPackages = with pkgs; [
    git
    gcc
    clang
    neovim
    vscode
    libgcc
    gnumake
    autoconf
    automake
    micromamba

    # REST client
    hoppscotch

    # SQL Client
    jetbrains.datagrip
  ];
}
