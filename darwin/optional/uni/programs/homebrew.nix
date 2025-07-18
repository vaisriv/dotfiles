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
            "zen"

            # TODO: package and upstream to nixpkgs
            "citrix-workspace"

            # WARN: currently broken on nix :)
            "mathpix-snipping-tool"
            # julia is broken on nix due to a lack of fhs env. want to eventually be handled by nix need to figure out shell.nix/flake.nix fhs-env or similar to get packages/libraries to actually work and not have linking errors
            "julia-app"

            # NOTE: installed manually:
            # umd vpn - palo-alto globalprotect-openconnect # umd's custom build of palo-alt vpn
            # matlab # closed-source
        ];
    };
}
