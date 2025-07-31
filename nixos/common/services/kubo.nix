{
    config,
    username,
    ...
}: {
    # IPFS
    services.kubo = {
        enable = true;
    };

    users.users."${username}" = {
        extraGroups = [
            config.services.kubo.group
        ];
    };
}
