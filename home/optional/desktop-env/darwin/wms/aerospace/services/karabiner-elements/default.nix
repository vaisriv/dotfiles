{
    ...
}: {
    home.file = {
        karabiner-elements-config = {
            enable = true;

            target = ".config/karabiner/karabiner.json";
            source = ./karabiner.json;
        };
    };
}
