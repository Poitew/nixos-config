{ config, pkgs, ... }:

{
    imports =
        [ # Include the results of the hardware scan.
            ./hardware-configuration.nix
            ./modules/system.nix
            ./modules/packages.nix
            ./modules/programs.nix
            ./modules/services.nix
            ./modules/hardware.nix
            ./modules/users.nix
        ];


    boot = {
        loader = {
            systemd-boot.enable = true;
            efi.canTouchEfiVariables = true;
        };
	
        kernelParams = [    
            "nvidia-drm.fbdev=1"
        ];
    };

    nixpkgs.config.allowUnfree = true;

    system.stateVersion = "24.05";
    
    environment.variables = {
        GDK_SCALE = "0.5";
    };
}