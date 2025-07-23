{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    homebrew = {
        brews = [
            "pandoc"
        ];

        casks = [
            "adobe-creative-cloud"
            "autodesk-fusion"

            # TODO: package and upstream to nixpkgs
            "citrix-workspace"

            # WARN: currently broken on nix :)
            "mathpix-snipping-tool"

            # NOTE: installed manually:
            # umd vpn - palo-alto globalprotect-openconnect # umd's custom build of palo-alt vpn
            # matlab # closed-source
        ];
    };
}
