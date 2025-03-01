{ config, pkgs, ... }:

{
    imports = [
        inputs.spicetify-nix.nixosModules.default
    ];

    programs.spicetify = let
        spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
    in {
        enable = true;
        theme = spicePkgs.themes.catppuccin;

        enabledExtensions = with spicePkgs.extensions; [
            adblock
            betterGenres
            hidePodcasts
            beautifulLyrics
            shuffle
        ];

        enabledCustomApps = with spicePkgs.apps; [
            lyricsPlus
        ];
    };

}