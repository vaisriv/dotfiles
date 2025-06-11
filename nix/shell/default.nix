# Shell for bootstrapping flake-enabled nix and home-manager
# You can enter it through 'nix develop' or (legacy) 'nix-shell'
{pkgs ? import <nixpkgs> {}}: {
  default = import ./shell.nix {inherit pkgs;};
}
