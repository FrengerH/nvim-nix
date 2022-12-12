{
  description = "My neovim config";

  outputs = { self, nixpkgs }: 
  let
    system = "x86_64-linux";

    pkgs = import nixpkgs {
      inherit system;
      overlays = [
        (import ./neovim.nix)
      ];
    };

  in {
    neovim = pkgs.neovim;

    packages.x86_64-linux.neovim = pkgs.neovim;

    packages.x86_64-linux.default = self.packages.x86_64-linux.neovim;

  };
}
