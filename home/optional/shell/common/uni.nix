{
    ...
}: {
    home = {
        sessionPath = [
        ];
        sessionVariables = {
            # uni dirs
            UNI_DIR = "$HOME/files/uni";
            UNI_NOTES_DIR = "$HOME/files/uni/notes";
        };
    };
    programs.fish = {
        shellAliases = {
            # allow uni shell script to cd user
            uni = "source $UNI_DIR/script";
        };
    };
}
