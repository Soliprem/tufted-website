{
  description = "Typst HTML Site";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        packages.default = pkgs.stdenv.mkDerivation {
          name = "typst-site";
          src = ./.;

          nativeBuildInputs = with pkgs; [
            gnumake
            typst
          ];

          buildPhase = ''
            make html
          '';

          installPhase = ''
            mkdir -p $out
            cp -r _site/* $out/
          '';
        };

        devShells.default = pkgs.mkShell {
          inputsFrom = [ self.packages.${system}.default ];
        };
      }
    );
}
