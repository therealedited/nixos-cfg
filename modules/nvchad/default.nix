{ stdenv, pkgs, fetchFromGithub }:

{
  nvchad = stdenv.mkDerivation rec {
    pname = "nvchad";
    version = "";
    dontBuild = true;
  
    src = pkgs.fetchFromGitHub {
      owner = "NvChad";
      repo = "starter";
      rev = "fea5d02d2d07b148243c058d1b8b775f9cccac5e";
      sha256 = "sha256-J0iB+5aRuirhF91CnFfG8hDmkY5jOT2QlHrkoku3WVw=";
    };
  
    installPhase = ''
      mkdir $out
      cp -aR $src/* $out/
    '';
  };
}
