{ pkgs, ... }: {
    programs.crush = {
        enable = true;
        package = pkgs.llm-agents.crush;

        settings = {
            providers = {
                ollama = {
                    id = "ollama";
                    name = "Ollama";
                    base_url = "http://localhost:11434/v1/";
                };
            };
        };
    };
}
