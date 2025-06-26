{ pkgs, ... }:

{
    home.packages = with pkgs; [
        gcc
    
        python312Full

        rustup
        
        ocaml
        ocamlPackages.utop
        dune_3

        nodejs_23

        mariadb-client
    ];
}
