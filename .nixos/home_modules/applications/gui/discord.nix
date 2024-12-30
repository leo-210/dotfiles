{ pkgs, ... }:

{
  home.packages = with pkgs; [ discord discord-canary ];
}
