{ pkgs, buildPythonPackage }:

with pkgs;

rec { Flask = buildPythonPackage rec {
      name = "Flask-0.10.1";
      src = pkgs.fetchurl {
        url = "https://pypi.python.org/packages/source/F/Flask/${name}.tar.gz";
        sha256 = "0wrkavjdjndknhp8ya8j850jq7a1cli4g5a93mg8nh1xz2gq50sc";
      };
      propagatedBuildInputs = [ python27Packages.itsdangerous
                                python27Packages.werkzeug
                                python27Packages.jinja2

                              ]; 
      meta = {
      };
    };
    limits = buildPythonPackage rec {
      name = "limits-1.1.1";
      src = pkgs.fetchurl {
        url = "https://pypi.python.org/packages/source/l/limits/${name}.tar.gz";
        sha256 = "1cz61r1ddsfchpkw8v4s9gwkli2qv4gn6fcswrr4b63mm9m78c7q";
      };
      propagatedBuildInputs = [ python27Packages.six ]; 
      meta = {
      };
    };

    Flask-Limiter = buildPythonPackage rec {
      name = "Flask-Limiter-0.9.3";
      src = pkgs.fetchurl {
        url = "https://pypi.python.org/packages/source/F/Flask-Limiter/${name}.tar.gz";
        sha256 = "1nf4pd409033h004xal0gdazx90n44mrbc2kpk77v2637y0wprcg";
      };
      propagatedBuildInputs = [ python27Packages.flask
                                python27Packages.six
                                limits
                              ]; 
      meta = {
      };
   };
}



#buildPythonPackage rec { 
#     name = "arxiv-sanity";
#     version = "1.0";
#     src = builtins.filterSource (path: type: baseNameOf path != ".git") ./.;
#     isExecutable = true;
#     isLibrary = true;
#     buildInputs = with pkgs.python27Packages; [ feedparser numpy scipy scikitlearn dateutil flask Flask-Limiter tornado ];
#     license = null;
#}