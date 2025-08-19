# NixOS configuration
My personal NixOS configuration for my system


## Structure
```
.
├── flake.nix
├── hardware-configuration.nix
└── modules/
    ├── fonts.nix
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
| `flake.nix        `            | Flake where all modules are imported and the nixos version is stated         |
| `hardware-configuration.nix`   | Auto-Generated hardware config.                                              |
| `fonts.nix`                    | Fonts setup                                                                  |
| `hardware.nix`                 | More hardware config.                                                        |
| `packages.nix`                 | System-wide packages.                                                        |
| `programs.nix`                 | Packages installed and configured via the programs option.                   |
| `services.nix`                 | General services like openSSH, Docker, etc.                                  |
| `spicetify.nix`                | Spicetify configuration and setup                                            |
| `system.nix`                   | Config such as keyboard, time-zone, nix gc, etc.                             |
| `users.nix`                    | Users declaratiob and user-specific configurations.                          |
