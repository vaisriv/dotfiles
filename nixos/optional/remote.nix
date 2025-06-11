{
    config,
    lib,
    pkgs,
    modulesPath,
    username,
    ...
}: {
    environment.systemPackages = with pkgs; [
        wayvnc
    ];

    services.openssh = {
        enable = true;
        ports = [22];
        settings = {
            PasswordAuthentication = false;
            AllowUsers = [username];
            UseDns = true;
            X11Forwarding = true;
            PermitRootLogin = "no";
        };
    };
}
