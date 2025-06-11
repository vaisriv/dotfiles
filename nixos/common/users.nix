{
    config,
    username,
    hostname,
    pkgs,
    ...
}: {
    users.mutableUsers = true;
    users.users."${username}" = {
        initialPassword = "${username}";
        isNormalUser = true;
        extraGroups = [
            "wheel"
        ];
        shell = pkgs.fish;
    };
}
