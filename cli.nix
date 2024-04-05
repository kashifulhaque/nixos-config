{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    jq
    fd
    lf
    bat
    fzf
    eza
    zip
    zsh
    glow
    moar
    wget
    stow
    mold
    xclip
    typst
    unzip
    gping
    ffmpeg
    du-dust
    glances
    lazygit
    ripgrep
    alacritty
    oh-my-zsh
    lazydocker
    oh-my-posh
    xwaylandvideobridge
  ];
}
