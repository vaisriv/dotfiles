{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: let
    pkgs-mopidy = inputs.mopidy-darwin.legacyPackages.${pkgs.system};
in {
    services = {
        mopidy = {
            enable = true;
            package = pkgs-mopidy.mopidy;
            mediakeys.enable = true;

            # TODO: update nix-darwin module to allow configuring mopidy
            # dataDir = "";
            # extensionPackages = [];
            # configuration = ''
            #   [core]
            #   restore_state = true
            #
            #   [mpd]
            #   enabled = true
            #   hostname = localhost
            #   port = 6600
            #
            #   [local]
            #   enabled = true
            #   media_dir = $XDG_MUSIC_DIR/library
            #   scan_follow_symlinks = true
            #
            #   [notify]
            #   enabled = true
            #
            #   [spotify]
            #   enabled = true
            #   bitrate = 320
            # '';
            # extraConfigFiles = [];
        };
    };

    environment.systemPackages = with pkgs-mopidy; [
        mopidy-mpd
        mopidy-local
        mopidy-notify
        mopidy-spotify
    ];
}
