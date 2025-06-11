{
    config,
    pkgs,
    inputs,
    lib,
    username,
    fullname,
    ...
}: {
    users.users."${username}" = {
        home = "/Users/${username}";
        description = "${fullname}";
    };
    system.primaryUser = "${username}";
}
