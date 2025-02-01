{ ... }:

{
  imports = [
    ./tools.nix
    ./dev.nix
    ./temp.nix
    ./gui/alacritty.nix
    ./gui/firefox.nix
    ./gui/discord.nix
    ./gui/keepassxc.nix
    ./gui/spotify.nix
    ./gui/musescore.nix
    ./games/heroic.nix
  ];
}
