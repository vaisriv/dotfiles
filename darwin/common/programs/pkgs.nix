{
    pkgs,
    inputs,
    ...
}: {
    environment.systemPackages = with pkgs; [
        # cli/term tools
        asciinema
        asciinema-scenario
        cloudflared
        deno
        dust
        ffmpeg
        fx
        glow
        gtrash
        gum
        hexyl
        hyperfine
        lazysql
        mkalias
        p7zip
        pastel
        procs
        pngpaste
        poppler-utils
        presenterm
        pv
        testdisk
        tokei
        viu
        wiki-tui
        # inputs.vai-nixpkgs.legacyPackages.${pkgs.stdenv.hostPlatform.system}.mac-mpd-control
    ];
}
