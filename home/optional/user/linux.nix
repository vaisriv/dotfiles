{ username, ... }: {
    imports = [
        # Generic for all hosts
        ./common.nix
    ];

    home.homeDirectory = "/home/${username}";
}
