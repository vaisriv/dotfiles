{
  pkgs,
  inputs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    inputs.zen-browser.packages."${system}".default
    globalprotect-openconnect
    texliveFull
    zk
    libreoffice
    # marp-cli
    # chromium

    # NOTE: programs without ARM support
    # mathematica
    # mathpix-snipping-tool # anyway does not work on Wayland
    # slack
    # zotero
  ];
}
