{
  description = "Github Pages & Jekyll Dev Env";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
  };

  outputs = { self, nixpkgs }: {
    devShells.x86_64-linux.default =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      in
      pkgs.mkShell {
        name = "GH Pages Jekyll";
        packages = with pkgs; [
            ruby
            rubyPackages.jekyll
            bundler
            gcc
            gnumake
        ];
      };
  };
}
