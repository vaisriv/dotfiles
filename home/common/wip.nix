{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  home.packages = with pkgs; [
    # apps to make home-manager modules for
    macchina

    # only needs to be here until i finish setting up nvf
    neovim
    ## lsp
    ccls
    gopls
    lua-language-server
    matlab-language-server
    nil
    rust-analyzer
    rustc
    texlab
    tree-sitter
    ## formatters
    stylua
    ## langs
    gcc
    nodejs
  ];

  # can remove once home-manager modules are made
  home = {
    file.".config" = {
      source = ../user-dots/config;
      recursive = true;
    };
  };
}
