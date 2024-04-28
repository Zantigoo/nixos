{ pkgs, ... }:

pkgs.stdenv.mkDerivation {
  name = "sddm-theme";
  src = pkgs.fetchFromGitHub {
    owner = "catppuccin";
    repo = "sddm";
    rev = "6c5f9de6ded7ceb2d97051b6b437392332e36e47";
    sha256 = "0h7293v4snwmsny1bhvx233wmfxp1f07ww1aw9japzklxyxjbhac";
  };

  installPhase = ''
    mkdir -p $out
    cp -r ./* $out/
  '';
}

