{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        vim
        neofetch
        vscode
        kitty
        discord
        prismlauncher
        gnumake
        superTuxKart
        ranger
        unzip
        unrar
        git
        gcc
	btop
        nodejs
	killall
	emacs
	obsidian
	krita
        blender
	jdk
	cudaPackages.cudatoolkit
	mpv
	inkscape
	cargo
	rustc
	libreoffice
	android-tools
	scrcpy
    ];
}