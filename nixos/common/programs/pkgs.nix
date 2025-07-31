{
    pkgs,
    ...
}: {
    environment.systemPackages = with pkgs; [
        # nix formatter
        # inputs.alejandra.defaultPackage.${system}
        alejandra

        # cli/term tools
        bitwarden-cli
        dust
        fx
        glow
        gtrash
        jq
        lazysql
        p7zip
        ripgrep
        testdisk

        # gui apps
        firefox # still waiting on widevine support on ARM
        imv
        # TODO: find an audio app and can stream spotify hopefully lol
        vscodium
        xarchiver

        # NOTE: programs without ARM support
        # spotify
    ];
}
