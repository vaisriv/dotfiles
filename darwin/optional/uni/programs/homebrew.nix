{...}: {
    homebrew = {
        brews = [
            "pandoc"
        ];

        casks = [
            "adobe-creative-cloud"
            "autodesk-fusion"
            "vitalsource-bookshelf"
            "microsoft-teams"
            "citrix-workspace"
            "mathpix-snipping-tool"

            # NOTE: installed manually:
            # umd vpn - palo-alto globalprotect-openconnect # umd's custom build of palo-alt vpn
            # matlab # closed-source
        ];
    };
}
