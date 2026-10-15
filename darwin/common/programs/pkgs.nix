{ pkgs, ... }: {
    environment.systemPackages = with pkgs; [
        # cli/term tools
        asciinema
        asciinema-scenario
        bitwarden-cli
        cloudflared
        cht-sh
        dust
        ffmpeg
        fx
        glow
        grex
        gtrash
        gum
        hexyl
        hyperfine
        lazysql
        localsend
        mkalias
        p7zip
        pastel
        procs
        pngpaste
        poppler
        poppler-utils
        presenterm
        pv
        testdisk
        tokei
        ueberzugpp
        viu
        wiki-tui
    ];
}
