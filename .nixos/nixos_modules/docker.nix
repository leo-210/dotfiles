{ pkgs, ... }:

{
    virtualisation.docker.enable = true;
    users.users.leo.extraGroups = [ "docker" ];

    environment.systemPackages = with pkgs; [ docker docker-compose ];
}
