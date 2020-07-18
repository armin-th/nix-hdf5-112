{ pkgs ? import <nixpkgs> { } }:

let
  pname = "hdf5";
  version = "1.12.0";
in pkgs.hdf5.overrideAttrs (old: rec {
  inherit pname version;

  src = builtins.fetchurl {
    url="https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.12/${pname}-${version}/src/${pname}-${version}.tar.bz2";
    sha256 = "0qazfslkqbmzg495jafpvqp0khws3jkxa0z7rph9qvhacil6544p";
  };
})
