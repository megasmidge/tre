{ config, pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    grim # screenshot functionality
    slurp # screenshot functionality
    wl-clipboard # wl-copy and wl-paste for copy/paste from stdin / stdout
    mako # notification system developed by swaywm maintainer  
    unzip
    brave
    obsidian
    obs-studio
    kitty
    alacritty
    jetbrains-toolbox
    tmux
    shotcut
    fastfetch
    curl
    wget
    vim
    git
    signal-desktop
    vscodium
    cmatrix
    xfce.thunar
    
  ];

  # Enable the gnome-keyring secrets vault. 
  # Will be exposed through DBus to programs willing to store secrets.
  services.gnome.gnome-keyring.enable = true;

  # enable Sway window manager
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
  };
  programs.waybar.enable = true;
}
