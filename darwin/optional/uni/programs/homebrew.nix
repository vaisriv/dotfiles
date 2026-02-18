{...}: {
    homebrew = {
        brews = [
            "pandoc"
        ];

        casks = [
            "mathpix-snipping-tool"
            "adobe-creative-cloud"
            "autodesk-fusion"
            "citrix-workspace"
            "microsoft-teams"
            "microsoft-excel"
            "microsoft-powerpoint"
            "vitalsource-bookshelf"
            "inkscape"

            # WARN: wants updates too often to be installed by nix
            "zen"

            # WARN: currently broken on nixpkgs
            "xquartz"

            # NOTE: installed manually:
            # umd vpn - palo-alto globalprotect-openconnect # umd's custom build of palo-alt vpn
            # matlab # closed-source
            # ti-nspire cas # closed-source
        ];
    };
}
