{ pkgs, ...}:

{   
    
    fonts.packages = with pkgs; [ 
        corefonts

        (pkgs.callPackage ./custom_fonts.nix { inherit pkgs; })
    ];
}
