{ pkgs ? import <nixpkgs> {} }:

with pkgs;

let toolz = callPackage ./default.nix {
              pkgs=pkgs;
              buildPythonPackage = pkgs.python27Packages.buildPythonPackage;
            };
in (pkgs.python27.buildEnv.override rec {
      extraLibs =  with pkgs.python27Packages; [ ipython feedparser numpy scipy scikitlearn dateutil flask tornado toolz.Flask-Limiter];
    }).env



