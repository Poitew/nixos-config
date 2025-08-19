{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        vim
        neofetch
        vscode
        kitty
        discord
        prismlauncher
        superTuxKart
        ranger
        unzip
        unrar
        git
		btop
		killall
		emacs
		obsidian
		krita
        blender
		cudaPackages.cudatoolkit
		mpv
		inkscape
		cargo
		rustc
		libreoffice
		android-tools
		scrcpy
		starship
		nerd-fonts.fira-code
    ];
}