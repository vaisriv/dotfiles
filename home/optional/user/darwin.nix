{
    config,
    pkgs,
    inputs,
    username,
    ...
}: {
    home = {
        # User setup
        inherit username;
        homeDirectory = "/Users/${username}";
    };
}
