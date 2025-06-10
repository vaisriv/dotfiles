{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  # TODO: finish nvf config
  # programs.nvim = {
  #   enable = true;
  #   package = inputs.nvf.packages.${pkgs.system}.default;
  # };

  home = {
    packages = with pkgs; [
      # nvim
      neovim

      # lsp
      ccls
      gopls
      lua-language-server
      matlab-language-server
      nil
      rust-analyzer
      rustc
      texlab
      tree-sitter

      # formatters
      stylua

      # langs
      gcc
      nodejs
    ];
    file = {
      nvim-config = {
        enable = true;
        recursive = true;

        target = ".config/nvim";
        source = ../../../user-dots/config/nvim;
      };
    };
  };
}
