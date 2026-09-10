{ pkgs, ... }: {
    home.packages = with pkgs; [
        # cli/term tools
        asciinema
        asciinema-scenario
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
        p7zip
        pastel
        procs
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
