{ pkgs, ... }:

{
    hardware.sane = {
        enable = true;
        brscan5.enable = true;
    };
    users.users.leo.extraGroups = [ "scanner" ];

    environment.systemPackages = [
        pkgs.simple-scan
    ];
}
