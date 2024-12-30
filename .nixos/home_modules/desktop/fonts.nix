{ config, pkgs, input, ... }:

{
  fonts.fontconfig.enable = true;
  home.packages = with pkgs.nerd-fonts; [
    fira-code
    fira-mono
  ];
}
