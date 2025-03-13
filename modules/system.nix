{ config, pkgs, ... }:

{
    boot = {
        loader = {
            timeout = 15;
            systemd-boot.enable = true;
            efi.canTouchEfiVariables = true;
        };
	
        kernelParams = [    
            "nvidia-drm.fbdev=1"
        ];
    };


    networking = {
        hostName = "nixos";
        networkmanager.enable = true;
    };


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

    time.timeZone = "Europe/Rome";

    console.keyMap = "it2";

    system.stateVersion = "24.05";

    security.rtkit.enable = true;

    nixpkgs.config.allowUnfree = true;
    
    environment.variables = {
        GDK_SCALE = "0.5";
    };
}