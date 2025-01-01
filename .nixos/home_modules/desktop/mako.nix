{ ... }:

{
    services.mako = {
        enable = true;
        font = "FiraCode Nerd Font 10.5";
        backgroundColor = "#282a36";
        textColor = "#f8f8f2";
        margin = "5,5";
        height = 125;
        width = 300;
        icons = true;
        maxIconSize = 64;
        borderSize = 2;
        borderColor = "#bd93f9";
        progressColor = "#44475a";
        defaultTimeout = 2500;
        extraConfig = ''
        [mode=do-not-disturb]
        invisible=1
        '';
    };
}
