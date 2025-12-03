{...}: {
    programs.mpv.config = {
        ## Video
        profile = "high-quality";
        # vo=gpu-next
        scale-antiring = 0.6;
        deband = false;

        ## Dither
        # This must be set to match your monitor's bit depth
        dither-depth = 8;

        ## Behavior (personal preference)
        keep-open = true;
        save-position-on-quit = true;

        ## Screenshots
        screenshot-format = "png";
        screenshot-dir = "~/files/pictures/mpv";
        screenshot-template = "%F-%p-%n";

        ## Language Priority
        # Sub
        # Add enm before eng for honorifics
        slang = "enm.eng,enm.en";
        alang = "jpn,ja";

        # Dub
        # Uncomment this section to prefer English dub with subtitles for English dub
        #slang = "zxx,eng,en";
        #alang = "eng,en";
        #subs-with-matching-audio = false;

        ## UI
        border = false;

        ## Open in Fullscreen
        fullscreen = true;
        # window-maximized = true;
    };
}
