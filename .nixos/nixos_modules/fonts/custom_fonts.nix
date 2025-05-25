{ pkgs }:

pkgs.stdenv.mkDerivation {
  pname = "custom-fonts";
  version = "1.009";

  bell_mt = ./bell_mt.zip;
  birthstone = ./birthstone.zip;

  unpackPhase = ''
    runHook preUnpack
    ${pkgs.unzip}/bin/unzip $bell_mt 
    ${pkgs.unzip}/bin/unzip $birthstone

    runHook postUnpack
  '';

  installPhase = ''
    runHook preInstall

    install -Dm644 *.ttf -t $out/share/fonts/truetype

    runHook postInstall
  '';
}
