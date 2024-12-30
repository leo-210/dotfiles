{ config, pkgs, inputs, ... }:

{
  home.packages = with pkgs; [ fish ];
}
