# NixOS configuration
My personal NixOS configuration for my system


## Structure
```
.
├── flake.nix
├── hardware-configuration.nix
└── modules/
    ├── hardware.nix
    ├── packages.nix
    ├── programs.nix
    ├── services.nix
    ├── spicetify.nix
    ├── system.nix
    └── users.nix
```
| File                           | Description                                                                  |
|--------------------------------|------------------------------------------------------------------------------|
| `configuration.nix`            | Main file to import all the modules + system-wide config such as bootloader. |
| `hardware-configuration.nix`   | Auto generated hardware config.                                              |
| `hardware.nix`                 | More hardware config.                                                        |
| `packages.nix`                 | System-wide packages (nixpkgs).                                              |
| `programs.nix`                 | Packages installed and configured via the programs option.                   |
| `services.nix`                 | General services like openSSH, Docker, etc.                                  |
| `system.nix`                   | Config such as keyboard, time-zone, nix gc, etc.                             |
| `users.nix`                    | Users definition and user-specific configurations.                           |


## To-Do
- Update table