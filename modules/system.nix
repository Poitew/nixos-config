{ config, pkgs, ... }:

{
    networking = {
        hostName = "nixos";
        networkmanager.enable = true;
    };

    security.rtkit.enable = true;

    nix = {
        gc = {
            automatic = true; 
            dates = "weekly"; 
            options = "--delete-older-than 30d";
        };

	    settings = {
	        experimental-features = [ "nix-command" "flakes" ];
	    };
    };

    time.timeZone = "Europe/Rome";

    i18n = {
        defaultLocale = "en_US.UTF-8";

        extraLocaleSettings = {
            LC_ADDRESS = "it_IT.UTF-8";
            LC_IDENTIFICATION = "it_IT.UTF-8";
            LC_MEASUREMENT = "it_IT.UTF-8";
            LC_MONETARY = "it_IT.UTF-8";
            LC_NAME = "it_IT.UTF-8";
            LC_NUMERIC = "it_IT.UTF-8";
            LC_PAPER = "it_IT.UTF-8";
            LC_TELEPHONE = "it_IT.UTF-8";
            LC_TIME = "it_IT.UTF-8";
        };
    };

    console.keyMap = "it2";
}