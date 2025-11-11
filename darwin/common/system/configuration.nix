{
    config,
    pkgs,
    ...
}: {
    system = {
        # activationScripts are executed every time you boot the system or run `nixos-rebuild` / `darwin-rebuild`.
        activationScripts = {
            postActivation.text =
                # bash
                ''
                    # activateSettings -u will reload the settings from the database and apply them to the current session,
                    # so we do not need to logout and login again to make the changes take effect.
                    sudo -u vai /System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
                '';
            applications.text = let
                env = pkgs.buildEnv {
                    name = "system-applications";
                    paths = config.environment.systemPackages;
                    pathsToLink = "/Applications";
                };
            in
                pkgs.lib.mkForce
                # bash
                ''
                    # Set up application links as MacOS native aliases instead of as symlinks
                    echo "setting up /Applications..." >&2
                    rm -rf /Applications/Nix\ Apps
                    mkdir -p /Applications/Nix\ Apps
                    find ${env}/Applications -maxdepth 1 -type l -exec readlink '{}' + |
                    while read -r src; do
                    app_name=$(basename "$src")
                    echo "copying $src" >&2
                        ${pkgs.mkalias}/bin/mkalias "$src" "/Applications/Nix Apps/$app_name"
                    done
                '';
        };
    };

    # Add ability to use TouchID and WatchID for sudo authentication
    security.pam.services.sudo_local = {
        touchIdAuth = true;
        watchIdAuth = true;
    };
}
