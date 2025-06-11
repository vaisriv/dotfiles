{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    home = {
        sessionPath = [
        ];
        sessionVariables = {
            # uni dirs
            UNI_DIR = "$FILES_DIR/uni";
            UNI_NOTES_DIR = "$UNI_DIR/notes";
        };
    };
    programs.fish = {
        shellAliases = {
            # allow uni shell script to cd user
            uni = "source $UNI_DIR/script";

            # julia helper
            jl = "julia --project=. -i";
        };
        functions = {
            jl = {
                description = "run julia script and drop into interactive shell for given problem using local project environment";
                body = ''
                    set jlfile (string join \'\' "./code/" $prob".jl")
                    echo "\$ julia --project=. -i $jlfile $args"
                    julia --project=. -i $jlfile $args
                '';
                argumentNames = [
                    "prob"
                    "args"
                ];
            };
            jls = {
                description = "run and log output of julia script for given problem using local project environment";
                body = ''
                    set jlfile (string join \'\' "./code/" $prob ".jl")
                    set outfile (string join \'\' "./code/" $prob ".txt")
                    echo "\$ julia --project=. $jlfile $args | tee $outfile"
                    julia --project=. $jlfile $args | tee $outfile
                '';
                argumentNames = [
                    "prob"
                    "args"
                ];
            };
        };
    };
}
