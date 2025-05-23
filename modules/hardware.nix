{ config, pkgs, ... }:

{
    hardware = {
	    graphics = {
	        enable = true;
	    };

        pulseaudio = {
            enable = false;
        };

	    nvidia = {
	        modesetting.enable = true;
	        powerManagement.enable = true;
	        powerManagement.finegrained = false;
	        open = true;
	        nvidiaSettings = true;
		package = config.boot.kernelPackages.nvidiaPackages.stable;
	    };
    };
}