{ pkgs ? import <nixpkgs> { } }:

with pkgs;

let
  hdf5 = callPackage ./default.nix {};

in stdenv.mkDerivation {
  name = "hdf5-env";
  buildInputs = [hdf5];
}
