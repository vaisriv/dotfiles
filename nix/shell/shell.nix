{pkgs}:
pkgs.mkShell {
  # Enable experimental features without having to specify the argument
  NIX_CONFIG = "experimental-features = nix-command flakes";
  nativeBuildInputs = with pkgs; [
    # nh
    # home-manager
    git
    vim
    alejandra
  ];
}
