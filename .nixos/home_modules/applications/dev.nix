{ pkgs, ... }:

{
    home.packages = with pkgs; [
        gcc
    
        python3Full
        
        cargo
        
        ocaml
        ocamlPackages.utop
    ];
}
