{ ... }: {
    imports = [
        ./discord.nix
        ./librewolf.nix
        ./mpd.nix
        ./mpv
        ./ncmpcpp.nix
        ./ncspot.nix
        ./neovide.nix
        ./rio.nix
        ./rmpc.nix
        ./streamlink.nix
        ./yt-dlp.nix
        ./zathura.nix

        # old configs, not currently in use
        # ./ghostty.nix
        # ./qutebrowser.nix
        # ./sioyek.nix
        # ./wezterm.nix
    ];
}
