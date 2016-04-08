{ mkDerivation }:

with import <nixpkgs> {};

mkDerivation {
  pname = "arxiv-sanity"
  version = "1.0"
  src = builtins.filterSource (path: type: baseNameOf path != ".git") ./.;
  isExecutable = true;
  isLibrary = true;
  buildDepends = [
  python27Packages.feedparser
  python27Packages.numpy
  python27Packages.scipy
  python27Packages.scikitlearn
  python27Packages.dateutil
  python27Packages.flask
  python27Packages.tornado
  ];
  license = null;
}