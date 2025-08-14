{...}: {
    # TODO: actually implement latexmk and its rc in home-manager
    # programs.latexmk = {
    # 	enable = true;
    # 	package = pkgs.texlivePackage.latexmk;
    # 	settings = {
    # 		aux_dir = "./.texaux/";
    # 		aux_out_dir_report = 1;
    # 		bibtex_use = 2;
    # 		out_dir = "./";
    # 		pdf_mode = 1;
    # 		show_time = 1;
    # 		silent = 1;
    # 	};
    # };
    home.file = {
        ".config/latexmk/latexmkrc" = {
            text = ''
                $aux_dir = "./.texaux/";
                $aux_out_dir_report = 1;
                $bibtex_use = 2;
                $out_dir = "./";
                $pdf_mode = 4;
                $show_time = 1;
                $silent = 1;
            '';
            executable = false;
        };
    };
}
