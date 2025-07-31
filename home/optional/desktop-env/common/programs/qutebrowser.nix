{
    ...
}: {
    programs.qutebrowser = {
        enable = true;
        settings = {
            url = {
                auto_search = "naive";
                default_page = "about:blank";
            };

            # tabs = {
            # 	tabs_are_windows = false;
            # };
        };
        searchEngines = {
            DEFAULT = "https://unduck.astrophel.xyz/?q={}&default_bang=ddg";
            ddg = "https://www.duckduckgo.com/search?hl=en&amp;q={}";
            g = "https://www.google.com/search?hl=en&amp;q={}";
            w = "https://en.wikipedia.org/wiki/Special:Search?search={}&amp;go=Go&amp;ns0=1";
            aw = "https://wiki.archlinux.org/?search={}";
            nw = "https://wiki.nixos.org/index.php?search={}";
        };
    };
}
