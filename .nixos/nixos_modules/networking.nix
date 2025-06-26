{ pkgs, ... }:

{
    networking.networkmanager = {
        enable = true;
        dispatcherScripts = [
            {
                source = pkgs.writeText "upHook" ''
                    #!/usr/bin/env nix-shell
                    #! nix-shell -i bash --pure
                    #! nix-shell -p libnotify

                    notify-send "$2"

                    if [[ "$2" != "up" ]]; then 
                        notify-send "Tristesse..."
                        exit 
                    fi
                    notify-send "Salut !"  
                    if [[ "$CONNECTION_UUID" == "d7a660a5-3e61-47c9-a8de-3c2b9793075d" ]]; then
                        notify-send "Coucou"
                    fi
                '';
                type = "basic";
            }
        ];
    };
}
