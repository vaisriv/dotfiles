{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    programs.steam = {
        enable = true;
        protontricks.enable = true;
        remotePlay.openFirewall = true;
        dedicatedServer.openFirewall = true;
    };
}
