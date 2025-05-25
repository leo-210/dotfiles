{ pkgs, ...}:

{
    programs.firefox = {
        enable = true;
        languagePacks = [ "fr" "en-US" ];
        package = pkgs.librewolf;
        policies = {
            DefaultDownloadDirectory = "\${home}/downloads";
            DisableTelemetry = true;
            DisableFirefoxStudies = true;
            DisablePocket = true;
            DisplayBookmarkToolbar = "always";
            DontCheckDefaultBrowser = true;
            FirefoxHome = {
                SponsoredTopSites = false;
                Highlights = true;
                Search = false;
                Pocket = false;
                SponsoredPocket = false;
            };
            Homepage.Startpage  = "previous-session";
            NoDefaultBookmarks = true;
            
            # Extensions
            ExtensionSettings = {
                # uBlock origin
                "uBlock0@raymondhill.net" = {
                    install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
                    installation_mode = "force_installed";
                };
                # ClearURLs
                "{74145f27-f039-47ce-a470-a662b129930a}" = {
                    install_url = "https://addons.mozilla.org/firefox/downloads/file/4432106/clearurls-1.27.3.xpi";
                    installation_mode = "force_installed";
                };
                # Sponsorblock
                "sponsorBlocker@ajay.app" = {
                    install_url = "https://addons.mozilla.org/firefox/downloads/file/4480833/sponsorblock-5.12.1.xpi";
                    installation_mode = "force_installed";
                };
                # Youtube-shorts block 
                "{34daeb50-c2d2-4f14-886a-7160b24d66a4}" = {
                    install_url = "https://addons.mozilla.org/firefox/downloads/file/4487339/youtube_shorts_block-1.5.3.xpi";
                    installation_mode = "force_installed";
                };
                # Open bookmarks in new tab
                "{02503e58-2fea-4dc4-893b-d35e36b92437}" = {
                    install_url = "https://addons.mozilla.org/firefox/downloads/file/4274772/open_bookmarks_in_a_new_tab-0.2resigned1.xpi";
                    installation_mode = "force_installed";
                };
                # Classic Dracula theme
                "{d03a9f39-e0c7-4a56-a883-eed83f99368d}" = {
                    install_url = "https://addons.mozilla.org/firefox/downloads/file/4408579/classic_dracula_dark_theme-1.10.0.xpi";
                    installation_mode = "force_installed";
                };
            };

            Preferences = {
                "cookiebanners.service.mode" = 1;
                "cookiebanners.service.mode.privateBrowsing" = 1;
            };
        };
    };

    programs.chromium = {
        enable = true;
        package = pkgs.brave;
        extensions = [
            { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; } # ublock origin
        ];
    };
}
