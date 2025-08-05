{
    config,
    pkgs,
    ...
}: {
    programs = {
        taskwarrior = {
            enable = true;
            package = pkgs.taskwarrior3;
            config = {
                # settings
                journal.time = true;
                search.case.sensitive = false;
                # alias.clear = "!clear";

                # review tasks
                uda.reviewed = {
                    type = "date";
                    label = "Reviewed";
                };
                report = {
                    _reviewed = {
                        description = "Tasksh review report.  Adjust the filter to your needs.";
                        filter = "( reviewed.none: or reviewed.before:now-6days ) and ( +PENDING or +WAITING )";
                        sort = "reviewed+,modified+";
                        columns = "uuid";
                    };
                };

                # customized reports
                report = {
                    next = {
                        filter = "status:pending -WAITING limit:page project.not:personal.someday";
                        columns = "id,start.age,entry.age,depends,priority,project,tags,recur,scheduled.countdown,due.relative,until.remaining,description,urgency";
                    };
                    ready.filter = "+READY project.not:personal.someday";
                    ls = {
                        filter = "status:pending -WAITING project.not:personal.someday";
                        columns = "id,start.active,depends.indicator,project,tags,recur.indicator,wait.remaining,scheduled.countdown,due.countdown,until.countdown,description";
                    };
                };
            };
            colorTheme = "dark-256";
        };
    };

    home.packages = with pkgs; [
        tasksh
    ];
}
