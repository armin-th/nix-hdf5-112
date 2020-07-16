{ pkgs ? import <nixpkgs> { } }:

let
  pkg-info = {
    version = "1.12.0";
    pname = "hdf5";
  };

in pkgs.hdf5.overrideAttrs (old: {
    version = pkg-info.version;
    pname = pkg-info.pname;

    src = builtins.fetchurl {
      url="https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.12/${pkg-info.pname}-${pkg-info.version}/src/${pkg-info.pname}-${pkg-info.version}.tar.bz2";
      sha256 = "0qazfslkqbmzg495jafpvqp0khws3jkxa0z7rph9qvhacil6544p";
    };
})
