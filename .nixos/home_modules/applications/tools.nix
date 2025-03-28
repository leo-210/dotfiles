{ config, pkgs, inputs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Léo-21";
    userEmail = "leo.kosman@proton.me";
    extraConfig.init.defaultBranch = "main";
  };

  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
    options = [ "--cmd cd" ];
  };

  home.packages = with pkgs; [
    zip
    unzip
    wget
    gnumake

    ripgrep
    fd
    usbutils
    pciutils

    wl-clipboard
    fastfetch

    texliveFull
  ];
}
