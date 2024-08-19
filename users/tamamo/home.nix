{ lib, pkgs, ...}:

{
  home = {
    packages = with pkgs; [
      gnumake
      oh-my-zsh
      webcord
      networkmanagerapplet
      swaybg
      swaylock-fancy
      swayidle
      pamixer
      light
      brillo
      waybar
      dunst
      kitty
      wofi
      swww
      wdisplays
      lutris
      wl-clipboard
    ];
    
    username = "tamamo";
    homeDirectory = "/home/tamamo";
    
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "history" ];
      theme = "robbyrussell";
    };
  };
}
