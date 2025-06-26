{ ... }:

{ 
    imports = [ 
        ./services/all.nix 
        ./docker.nix
        ./networking.nix
        ./notifs.nix
        ./sway.nix 
        ./steam.nix 
        ./scan.nix 
        ./fonts/all.nix
        ./rtw89_fix.nix 
    ]; 
}
