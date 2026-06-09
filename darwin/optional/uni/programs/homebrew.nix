{ ... }:
{
    homebrew = {
        brews = [];

        casks = [
            "defold"
            "godot"
            "krita"

            # WARN: closed source/unfree
            "mathpix-snipping-tool"
            "adobe-creative-cloud"
            "citrix-workspace"
            "microsoft-teams"
            "microsoft-excel"
            "microsoft-powerpoint"
            "microsoft-word"
            "vitalsource-bookshelf"

            # WARN: wants updates too often to be installed by nix
            "zen"

            # WARN: currently broken on nixpkgs
            "inkscape"
            "xquartz"

            # NOTE: installed manually:
            # umd vpn - palo-alto globalprotect-openconnect # umd's custom build of palo-alt vpn
            # matlab # closed-source
            # ti-nspire cas # closed-source
        ];
    };
}
