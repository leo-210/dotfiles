{ config, ... }:

{
    xdg.enable = true;
    programs.bash.enable = true;
    xdg.userDirs = let homePath = "${config.home.homeDirectory}"; in {
        enable = true;
        desktop = homePath;
        documents = homePath +"/documents";
        download = homePath + "/downloads";
        music = homePath;
        pictures = homePath + "/images";
        publicShare = homePath;
        templates = homePath;
        videos = homePath + "/videos";
        extraConfig = {
            XDG_SCREENSHOTS_DIR = homePath + "/images/screenshots";
        };
    };
}
