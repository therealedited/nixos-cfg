{ stdenv, pkgs, fetchFromGithub }:

{
  nvchad = stdenv.mkDerivation rec {
    pname = "nvchad";
    version = "";
    dontBuild = true;
  
    src = pkgs.fetchFromGitHub {
      owner = "NvChad";
      repo = "starter";
      rev = "3e1667ef3c5c5f74ba0783eb50984f5e2700948c";
      sha256 = "sha256-J0iB+5aRuirhF91CnFfG8hDmkY5jOT2QlHrkoku3WVw=";
    };
  
    installPhase = ''
      mkdir $out
      cp -aR $src/* $out/
    '';
  };
}
