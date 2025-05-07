{ config, pkgs, ... }:

{
    services = {
        xserver = {
            enable = true;
	    displayManager.gdm.enable = true;
	    displayManager.gnome.enable = true;
		
            xkb = {
                layout = "it";
                variant = "";
            };

            videoDrivers = [ "nvidia" ];
            dpi = 96;
        };

        pipewire = {
            enable = true;
            alsa.enable = true;
            alsa.support32Bit = true;
            pulse.enable = true;
        };

        printing = {
            enable = true;
        };

	    openssh = {
	        enable = true;

            settings = {
                PermitRootLogin = "no";
            };
	    };    

        # todo: move to a separate file once the config starts to get messy
        nginx = {
            enable = true;

            virtualHosts.localhost = {
                locations."/" = {
                    return = "200 '<html><body>It works</body></html>'";
                    extraConfig = ''
                        default_type text/html;
                    '';
                };
            };
        };
    };

    virtualisation = {
        docker.enable = true;
    };
}