{ pkgs, inputs, ... }: {
    services.ollama = {
        enable = true;
        package = inputs.nixpkgs-unstable.legacyPackages.${pkgs.stdenv.hostPlatform.system}.ollama;
    };
    # home.packages = with pkgs; [
    #     llm-agents.crush
    # ];
}
