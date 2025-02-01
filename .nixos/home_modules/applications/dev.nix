{ pkgs, ... }:

{
    home.packages = with pkgs; [
        gcc
    
        python312Full

        cargo
        
        ocaml
        ocamlPackages.utop
    ];
}
