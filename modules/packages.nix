{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        vim
        neofetch
        vscode
        kitty
        discord
        spotify
        prismlauncher
        gnumake
        superTuxKart
        ranger
        unzip
        git
        gcc
	    btop
        nodejs
	    killall
	    emacs
	    obsidian
	    krita    
    ];
}