{
    inputs,
    system,
}: {
    config.allowUnfree = true;

    inherit system;

    overlays = [
        # lix
        (_final: prev: {
            inherit
                (prev.lixPackageSets.stable)
                nixpkgs-review
                nix-eval-jobs
                nix-fast-build
                colmena
                ;
        })

        # inputs
        inputs.nur.overlays.default
        inputs.nixos-apple-silicon.overlays.default
        inputs.devshell.overlays.default
    ];
}
