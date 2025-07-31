{
    ...
}: {
    services = {
        taskwarrior-sync = {
            enable = true;
            frequency = "*:0/5";
        };
    };
}
