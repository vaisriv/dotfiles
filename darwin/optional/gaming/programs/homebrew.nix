{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    homebrew = {
        brews = [
        ];

        casks = [
            "steam"
            "epic-games"
        ];
    };
}
