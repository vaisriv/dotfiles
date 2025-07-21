{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    programs = {
        taskwarrior = {
            enable = true;
            package = pkgs.taskwarrior2;
            config = {
                # settings
                news.version = "2.6.0";
                journal.time = true;
                search.case.sensitive = false;
                alias.clear = "!clear";

                # review tasks
                uda.reviewed.type = "date";
                uda.reviewed.label = "Reviewed";
                report._reviewed.description = "Tasksh review report.  Adjust the filter to your needs.";
                report._reviewed.columns = "uuid";
                report._reviewed.sort = "reviewed+,modified+";
                report._reviewed.filter = "( reviewed.none: or reviewed.before:now-6days ) and ( +PENDING or +WAITING )";

                # customized reports
                report.next.filter = "status:pending -WAITING limit:page project.not:personal.someday";
                report.ready.filter = "+READY project.not:personal.someday";
                report.ls.columns = "id,start.active,depends.indicator,project,tags,recur.indicator,wait.remaining,scheduled.countdown,due.countdown,until.countdown,description";
                report.ls.filter  = "status:pending -WAITING project.not:personal.someday";
            };
            colorTheme = "dark-256";
        };
    };

    home.packages = with pkgs; [
        tasksh
    ];
}
