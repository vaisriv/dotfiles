{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    environment.systemPackages = with pkgs; [
        # cli/term tools
        asciinema
        asciinema-scenario
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
        poppler_utils
        presenterm
        testdisk
        tokei
        viu
        wiki-tui
        inputs.vai-nixpkgs.legacyPackages.${pkgs.system}.mac-mpd-control
    ];
}
