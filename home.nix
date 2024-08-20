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
      hello
    ];
    
    username = "tamamo";
    homeDirectory = "/home/tamamo";
    
    stateVersion = "24.05";
  };
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };
  programs = {
    home-manager.enable = true;
    zsh = {
      enable = true;
      syntaxHighlighting.enable = true;
      oh-my-zsh = {
        enable = true;
        plugins = [ "git" "history" ];
        theme = "robbyrussell";
        };
    };
  };



  xdg.configFile."nvim/" = {
    source = (pkgs.callPackage ./modules/nvchad/default.nix{}).nvchad;
  };

}
