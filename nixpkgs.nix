{ inputs, system }:
{
    config.allowUnfree = true;

    inherit system;

    overlays = [
        # lix
        (_final: prev: {
            inherit (prev.lixPackageSets.git)
                nix-eval-jobs
                nix-fast-build
                nix-serve-ng
                nix-update
                nixpkgs-review
                nixpkgs-reviewFull
                colmena
                nil
                ;
        })

        # inputs
        inputs.nur.overlays.default
        inputs.nixos-apple-silicon.overlays.default
        inputs.devshell.overlays.default

        # ISSUE:
        # mas overlay needed due to https://github.com/nix-darwin/nix-darwin/issues/1722
        # mas: Mac App Store CLI - override to v6.0.0
        (_final: prev: {
            mas = prev.stdenvNoCC.mkDerivation rec {
                pname = "mas";
                version = "6.0.0";
                src =
                    let
                        sources =
                            {
                                aarch64-darwin = {
                                    arch = "arm64";
                                    hash = "sha256-xyAASl5m/I3wMQdeUtQ/Bn+LIp/75BLRWYn9eT8Z8sw=";
                                };
                                x86_64-darwin = {
                                    arch = "x86_64";
                                    hash = "sha256-H3xsgOeeCW6CRQCjWHYz6APciwiobHJZJhGgrGCzSYk=";
                                };
                            }
                            .${prev.stdenvNoCC.hostPlatform.system}
                                or (throw "Unsupported system: ${prev.stdenvNoCC.hostPlatform.system}");
                    in
                    prev.fetchurl {
                        url = "https://github.com/mas-cli/mas/releases/download/v${version}/mas-${version}-${sources.arch}.pkg";
                        inherit (sources) hash;
                    };
                nativeBuildInputs = with prev; [
                    installShellFiles
                    libarchive
                    p7zip
                ];
                unpackPhase = ''
                    runHook preUnpack
                    7z x $src
                    bsdtar -xf Payload~
                    runHook postUnpack
                '';
                dontConfigure = true;
                dontBuild = true;
                installPhase = ''
                    runHook preInstall
                    installBin usr/local/opt/mas/bin/mas
                    installManPage usr/local/opt/mas/share/man/man1/mas.1
                    installShellCompletion --bash usr/local/opt/mas/etc/bash_completion.d/mas
                    installShellCompletion --fish usr/local/opt/mas/share/fish/vendor_completions.d/mas.fish
                    runHook postInstall
                '';
                meta = {
                    description = "Mac App Store command line interface";
                    homepage = "https://github.com/mas-cli/mas";
                    license = prev.lib.licenses.mit;
                    mainProgram = "mas";
                    platforms = [
                        "x86_64-darwin"
                        "aarch64-darwin"
                    ];
                };
            };
        })
    ];
}
