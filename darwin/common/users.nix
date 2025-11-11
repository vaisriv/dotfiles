{
    username,
    fullname,
    pkgs,
    ...
}: {
    users = {
        users."${username}" = {
            home = "/Users/${username}";
            description = "${fullname}";

            uid = 501;
            shell = pkgs.fish;
        };
        knownUsers = ["${username}"];
    };
    system.primaryUser = "${username}";
}
