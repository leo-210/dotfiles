{ config, pkgs, inputs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Léo-21";
    userEmail = "leo.kosman@proton.me";
  };

  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
    options = [ "--cmd cd" ];
  };

  home.packages = with pkgs; [
    gcc
    python3Full
    cargo

    zip
    unzip
    wget

    ripgrep
    fd

    wl-clipboard
    fastfetch
  ];
}
