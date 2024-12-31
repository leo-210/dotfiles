{ pkgs, ... }:

{
    xdg.portal = {
        enable = true;
        extraPortals = with pkgs; [ xdg-desktop-portal ];
        config.common.default = "*";
    };

    programs.waybar = {
        enable = true;
        settings = {
            bar = {
                #layer = "top";
                position = "top";
                
                height = 30;
                margin = "0 0 5";

                modules-left = [ "clock" ];
                modules-center = [ "sway/workspaces" ];
                modules-right = [
                    "group/info1"
                    "custom/separator"
                    "group/info2"
                ];

                clock = {
                    format = "{:L%H:%M  %a %d %b %Y}";
                    locale = "fr_FR.UTF-8";
                    timezone = "Europe/Paris";
                };
                
                "group/info1" = {
                    modules = [ "temperature" "memory" "cpu" ];
                    orientation = "horizontal";
                };

                "group/info2" = {
                    modules = [ "network" "wireplumber" "battery" ];
                    orientation = "horizontal";
                };

                "custom/separator".format = "|";

                temperature.format = "TEMP {temperatureC}°C";
                memory.format = "RAM {used} GiB";
                cpu.format = "CPU {usage}%";

                network = {
                    format-wifi = "WIFI {signalStrength}%";
                    format-ethernet = "ETH";
                    format = "NO CONN";
                };
                wireplumber = {
                    format = "VOL {volume}%";
                    format-muted = "MUTED";
                };
                battery = {
                    states = {
                        warning = 30;
                        alert = 15;
                        critical = 5;
                    };
                    format = "BAT {capacity}%";
                };

                ipc = true;
                id = "bar-0";
            };
        };

        style = ./style.css;
    };
}
