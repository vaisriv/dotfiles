{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    imports = [
        ./atuin.nix
        ./bat.nix
        ./btop.nix
        ./direnv.nix
        ./eza.nix
        ./fd.nix
        ./fzf.nix
        ./git.nix
        ./glow.nix
        # ./helix.nix
        ./jq.nix
        ./latexmk.nix
        ./lazygit.nix
        ./macchina
        ./mpd.nix
        ./ncmpcpp.nix
        ./ncspot.nix
        ./nh.nix
        ./nvim.nix
        ./ripgrep.nix
        ./rmpc.nix
        ./starship.nix
        ./taskwarrior
        ./tealdeer.nix
        ./tmux
        # ./uv.nix
        ./yazi
        ./yt-dlp.nix
        ./zoxide.nix
    ];
}
