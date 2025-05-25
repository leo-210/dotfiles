{ pkgs, ... }:

{
    home.packages = with pkgs; [ jetbrains.webstorm jetbrains.goland ];
}
