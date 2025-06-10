{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: {
  environment.systemPackages = with pkgs; [
    # nix formatter
    inputs.nixpkgs-unstable.legacyPackages.${system}.alejandra

    # cli/term tools
    asciinema
    asciinema-scenario
    deno
    dust
    ffmpeg
    fx
    glow
    hexyl
    hyperfine
    lazysql
    mkalias
    p7zip
    pastel
    procs
    pngpaste
    poppler_utils
    presenterm
    testdisk
    tokei
    trash-cli
    viu
    wiki-tui
  ];
}
