{ config, pkgs, ... }:

{
    users.users.poitew = {
        isNormalUser = true;

        extraGroups = [ 
            "networkmanager" 
            "wheel" 
            "docker" 
        ];
    };
}