{ fullname, email, ... }: {
    programs = {
        jujutsu = {
            enable = true;
            settings = {
                user = {
                    name = fullname;
                    email = email;
                };
            };
        };

        jjui = {
            enable = true;
            # settings = {};
        };
    };
}
