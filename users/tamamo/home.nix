{ lib, pkgs, ...}:

{
  home = {
    packages = with pkgs; [
      hello
      gnumake
    ];

    username = "tamamo";
    homeDirectory = "/home/tamamo";

    stateVersion = "23.11";
  };
}
