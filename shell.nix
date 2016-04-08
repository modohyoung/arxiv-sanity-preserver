{ pkgs ? import <nixpkgs> {} }:

with pkgs;


import ./default.nix { mkDerivation = stdenv.mkDerivation; inherit pkgs; }

#let env = import ./default.nix { mkDerivation = stdenv.mkDerivation; };
#in stdenv.mkDerivation {
#  name = "arxiv-sanity-shell";
#  buildInputs = [ env ];
#  shellHook = "";
#}