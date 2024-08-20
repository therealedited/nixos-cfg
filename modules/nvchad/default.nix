{ stdenv, pkgs, fetchFromGithub }:

{
  nvchad = stdenv.mkDerivation rec {
    pname = "nvchad";
    version = "";
    dontBuild = true;
  
    src = pkgs.fetchFromGitHub {
      owner = "NvChad";
      repo = "NvChad";
      rev = "fea5d02d2d07b148243c058d1b8b775f9cccac5e";
      sha256 = "sha256-66pjUCD1vcrBlsVCtiNn0VVLPg2ZFNs5bfyRUh+tefA=";
    };
  
    installPhase = ''
      mkdir $out
      cp -aR $src/* $out/
    '';
  };
}
