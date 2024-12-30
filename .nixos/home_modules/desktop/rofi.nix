{ config, pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    rofi-wayland
    rofi-power-menu
  ];
}
