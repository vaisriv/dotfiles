{
    ...
}: {
    imports = [
        # Generic for all DM+WM (gui apps, etc)
        ../common

        # Apps and Programs
        ./programs

        # Services
        ./services

        # GNOME
        ./wm.nix
    ];
}
