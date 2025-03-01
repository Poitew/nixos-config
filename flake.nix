{
    description = "Poitew flake configuration";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";

        spicetify-nix.url = "github:Gerg-L/spicetify-nix";
        spicetify-nix.inputs.nixpkgs.follows = "nixpkgs";
    };

    outputs = { self, nixpkgs, spicetify-nix, ... }@inputs: {
        nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            modules = [
                ({ config, pkgs, ... }: { inputs = inputs; })
                ./hardware-configuration.nix
                ./modules/system.nix
                ./modules/packages.nix
                ./modules/programs.nix
                ./modules/spicetify.nix
                ./modules/services.nix
                ./modules/hardware.nix
                ./modules/users.nix
            ];
        };
    };
}