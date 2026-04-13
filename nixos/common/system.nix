{ ... }:
{
    system = {
        # Enable weekly automatic updates
        autoUpgrade = {
            enable = false;
            dates = "weekly";
            flake = "github:vaisriv/dotfiles";
        };
    };
}
