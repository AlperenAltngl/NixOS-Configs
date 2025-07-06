{...}: {
  imports = [
    ./localisation.nix
    ./programs.nix
    ./boot.nix
    ./network.nix
    ./hardware.nix
    ./nix.nix
    ./display.nix
    ./program_config.nix
    ./fonts.nix
    ./audio.nix
    ./udevextra.nix
    ./user.nix
    ./security.nix
    ./sddm.nix
    ./flutter.nix
  ];
}
